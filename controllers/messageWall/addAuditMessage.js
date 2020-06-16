const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const association_id = ctx.request.body.association_id,
        content = ctx.request.body.content,
        user_name = ctx.request.body.user_name,
        user_avatarUrl = ctx.request.body.user_avatarUrl,
        date = ctx.request.body.date;

    try{
        await mysql('message_wall')
            .insert({association_id:association_id,content:content,user_name:user_name,
            user_avatarUrl:user_avatarUrl,date:date,status:false});

        ctx.response.status = 200;
    }catch (e) {
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }
};
