const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const open_id=ctx.request.body.open_id,
        option_id=ctx.request.body.option_id,
        content=ctx.request.body.content;
    try {
        await mysql('answer')
            .insert({
                open_id:open_id,
                option_id:option_id,
                content:content
            })
        var option_chosen=await mysql('option')
            .select('option.*')
            .where('option_id',option_id);
        var num=option_chosen[0].chosen_num+1;
        await mysql('option')
            .where('option_id',option_id)
            .update({
                chosen_num:num
            });
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
        ctx.response.body=c
    }
}