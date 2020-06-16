const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const id = ctx.query.album_id;

    ctx.body = await mysql('photo')
        .select({photo_id:'photo_id',image_src:'image_src',description:'description',uploadDate:'upload_date'})
        .where('album_id',id)
}