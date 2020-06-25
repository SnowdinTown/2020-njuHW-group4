const mysql = require('../../middleware/mysql');

module.exports = async (ctx) =>{
    const activity_id=ctx.request.body.activity_id,
        open_id=ctx.request.body.association_id,
        name=ctx.request.body.name,
        time=ctx.request.body.time,
        title=ctx.request.body.title,
        writing=ctx.request.body.writing,
        photoList=ctx.request.body.photoList;
    try {
        var data = await mysql('association_collection')
            .select('collection_id')
            .where('activity_id', activity_id);
        var collectionId = data[0].collection_id;
        await mysql('contribution')
            .insert({
                collection_id:collectionId,
                open_id:open_id,
                name:name,
                time:time,
                title:title,
                writing:writing
            });
        var data1=await mysql('contribution')
            .max('contribution_id');
        var contribution_id=data1[0]['max(`contribution_id`)'];
        for(var i=0;i<photoList.length;i++){
            var photo=photoList[i];
            await  mysql('collection_photo')
                .insert({
                    collection_id:collectionId,
                    contribution_id:contribution_id,
                    url:photo
                });
        }
        ctx.response.status = 200;
    }catch (e) {
        ctx.response.status=500;
    }

}