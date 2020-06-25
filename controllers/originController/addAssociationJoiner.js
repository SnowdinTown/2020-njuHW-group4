const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {

    const open_id = ctx.query.open_id,
        association_id = ctx.query.association_id;
    console.log(open_id)
    try {
        await mysql('association_joiner').insert({
            open_id: open_id,
            association_id: association_id
        });
        ctx.body={
            open_id: open_id,
            association_id: association_id
        }
    } catch (e) {
        ctx.state = {
            code: -1,
            data: {
                msg: e.sqlMessage  //数据库报错信息
            }
        }
        ctx.body={
            msg:e.sqlMessage
        }
    }

};