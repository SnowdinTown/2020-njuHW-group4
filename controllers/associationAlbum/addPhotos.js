const mysql = require("../../middleware/mysql");

module.exports = async (ctx) => {
    const album_id = ctx.request.body.album_id,
        photos = eval(ctx.request.body.image_src_list);
    try{
        for(let i=0;i<photos.length;++i){
            await mysql('photo')
                .insert({
                    album_id: album_id,
                    image_src: photos[i]
                })
        }
        ctx.response.status = 200;
    }catch (e) {
        ctx.state = {
            code: -1,
            msg: e.sqlMessage
        }
    }
}