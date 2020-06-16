const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const id = ctx.query.association_id;

    const albums = await mysql('association_album')
        .select({album_id:'association_album.album_id', albumName:'album_name',
            associationId:'association_id', createTime:'create_time'})
        .where('association_id',id);


    for(let i=0;i<albums.length;++i){
        let photos = await mysql('photo')
            .select({coverImageOfAlbum_src:'image_src'})
            .where('album_id',albums[i].album_id);
        if(photos.length>0){
            albums[i] = {...albums[i],...photos[0]}
        }
        albums[i] = {...albums[i],amountOfPhotos:photos.length}
    }
    ctx.body = albums
}