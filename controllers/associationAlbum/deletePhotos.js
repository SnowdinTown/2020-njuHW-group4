const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const photoIds = eval(ctx.request.body.photo_id_list);

    try{
        for(let i=0;i<photoIds.length;++i){
            await mysql('photo')
                .where('photo_id',photoIds[i])
                .del();
        }
        ctx.response.status = 200;
    }catch (e) {
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }

}