const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const message_id = ctx.request.body.message_id;

    try{
        let likes = await mysql('message_wall')
            .select('likes')
            .where('message_id',message_id)
        await mysql('message_wall')
            .where('message_id',message_id)
            .update({likes:likes[0].likes+1});
        ctx.response.status = 200;
    }catch (e) {
        ctx.status = 500;
        ctx.body = {
            code: -1,
            msg: e.sqlMessage
        }
        console.log(e)
    }
}