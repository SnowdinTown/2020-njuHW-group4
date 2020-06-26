const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const answers=eval('('+ctx.request.body.answers+')');
    console.log(answers)
    try {
        for(var i=0;i<answers.length;i++) {
            var answer=answers[i];
            var open_id=answer.open_id;
            var option_id=answer.option_id;
            var content=answer.content;
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
        ctx.response.status=200;
        var c={
            msg:'True'
        }
        ctx.response.body=c
    }catch (e) {
        ctx.response.status=500;
        var c={
            msg:'False'
        }
        console.log(e)
    }
}