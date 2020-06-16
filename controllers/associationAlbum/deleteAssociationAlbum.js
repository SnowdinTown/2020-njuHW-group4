const mysql = require("../../middleware/mysql");

module.exports = async (ctx) => {

    const album_id = ctx.request.body.album_id,
    association_id = ctx.request.body.association_id;

    try {

        await mysql('association_album')
            .where('album_id', album_id)
            .andWhere('association_id',association_id)
            .del();
        ctx.response.status = 200;
    }catch (e) {
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }
}
