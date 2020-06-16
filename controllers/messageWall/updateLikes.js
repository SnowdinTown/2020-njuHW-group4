const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const message_id = ctx.request.body.message_id,
        likes = eval(ctx.request.body.likes);

    try{
        await mysql('message_wall')
            .where('message_id',message_id)
            .update({likes:likes});
        ctx.response.status = 200;
    }catch (e) {
        ctx.status = 500;
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }
}