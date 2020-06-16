const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const message_id = ctx.request.body.message_id;

    try{
        await mysql('message_wall')
            .where('message_id',message_id)
            .update({status:1});
        ctx.response.status = 200;
    }catch (e) {
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }
}