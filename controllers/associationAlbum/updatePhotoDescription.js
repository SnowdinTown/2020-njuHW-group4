const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const photoId = ctx.request.body.photo_id,
        description = ctx.request.body.description;

    try{
        await mysql('photo')
            .where('photo_id',photoId)
            .update({description:description});
        ctx.response.status = 200;
    }catch (e) {
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }
}