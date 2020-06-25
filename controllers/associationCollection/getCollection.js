const mysql=require('../../middleware/mysql')
module.exports = async (ctx) => {
    const activity_id=ctx.query.activity_id;
    const collectionList=await mysql('association_collection')
        .select('collection_id','association_id','start_time','end_time','collection_name','collection_description','offlineTag','deleteTag','activity_id')
        .where('activity_id',activity_id);


    var res=[];
    for(var i=0;i<collectionList.length;i++){
        var collection=collectionList[i];
        var collection_id=collection.collection_id;
        var photoList=await  mysql('collection_photo')
            .select('photo_id','photo_url')
            .where('collection_id',collection_id);
        var cur={
            activity_id:collection.activity_id,
            association_id:collection.association_id,
            start_time:collection.start_time,
            end_time:collection.end_time,
            collection_name:collection.collection_name,
            collection_description:collection.collection_description,
            offlineTag:collection.offlineTag,
            deleteTag:collection.deleteTag,
            photoList:photoList
        }
        res.push(cur)
    }
    ctx.body=res[0]
}