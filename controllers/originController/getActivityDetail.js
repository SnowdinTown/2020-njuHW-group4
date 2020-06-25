const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {

    const activity_id = ctx.query.activity_id;

    ctx.body = await mysql('activity')
        .select('*')
        .where('activity_id', activity_id)
        .first();

};
