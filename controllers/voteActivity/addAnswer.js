const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const answers=eval('('+ctx.request.body.answers+')');
    console.log(answers)
    let id = answers[0].option_id;
    let vote_time = await mysql('option')
        .join('vote_activity','option.activity_id','vote_activity.activity_id')
        .select('vote_activity.start_time','vote_activity.end_time')
        .where('option.option_id',id);
    let start_time = new Date(Date.parse(vote_time[0].start_time)),
        end_time = new Date(Date.parse(vote_time[0].end_time)),
        cur_time = new Date();

    if(cur_time<start_time){
        ctx.body = {
            ok: false,
            msg : '活动未开始'
        }
    }else if(cur_time>end_time){
        ctx.body = {
            ok: false,
            msg : '活动已结束'
        }
    }else {
        try {
            for (var i = 0; i < answers.length; i++) {
                var answer = answers[i];
                var open_id = answer.open_id;
                var option_id = answer.option_id;
                var content = answer.content;
                await mysql('answer')
                    .insert({
                        open_id: open_id,
                        option_id: option_id,
                        content: content
                    })
                var option_chosen = await mysql('option')
                    .select('option.*')
                    .where('option_id', option_id);
                var num = option_chosen[0].chosen_num + 1;
                await mysql('option')
                    .where('option_id', option_id)
                    .update({
                        chosen_num: num
                    });
            }
            ctx.response.body = {
                ok: true,
                msg: '投票成功'
            };
        } catch (e) {
            ctx.response.status = 500;
            console.log(e);
        }
    }
}