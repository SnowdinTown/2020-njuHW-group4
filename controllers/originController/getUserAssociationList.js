const mysql = require('../../middleware/mysql')

module.exports = async (ctx) => {

    const open_id = ctx.query.open_id;

    try {
        ctx.body = await mysql('association_joiner')
            .join('association','association_joiner.association_id','association.id')
            .select('association.*')
            .where('association_joiner.open_id',open_id);
    } catch (e) {
        ctx.body = {
            code: -1,
            data: {
                msg: e.sqlMessage
            }
        }
    }

};
