const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const album_name = ctx.request.body.album_name,
        association_id = ctx.request.body.association_id;

        try {
             await mysql('association_album')
                .insert({
                    album_name: album_name,
                    association_id: association_id
                });
            ctx.response.status = 200;
        }catch (e) {
            ctx.state = {
                code: -1,
                data:{
                    msg: e.sqlMessage
                }
            }
        }

}