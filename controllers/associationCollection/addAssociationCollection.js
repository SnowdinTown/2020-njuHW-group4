const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const association_id = ctx.request.body.association_id,
        start_time = ctx.request.body.start_time,
        end_time=ctx.request.body.end_time,
        collection_name=ctx.request.body.collection_name,
        collection_description=ctx.request.body.collection_description,
        photoList=ctx.request.body.photoList,
        offlineTag=ctx.request.body.offline,
        deleteTag=ctx.request.body.delete,
        association_name=ctx.request.body.association_name,
        location=ctx.request.body.location,
        wx_location=ctx.request.body.wx_location,
        category=ctx.request.body.catefoty;
    var date=start_time.substr(0,10);
    var time=start_time.substr(11,8);
    try {
        await mysql('activity')
            .insert({
                date:date,
                time:time,
                location:location,
                wx_location:wx_location,
                category:category,
                association_id:association_id,
                association_name:association_name,
                activity_intro:collection_description
            });
        var data=await mysql('activity')
            .max('activity_id');
        var activity_id=data[0]['max(`activity_id`)'];
        await mysql('association_collection')
            .insert({
                association_id: association_id,
                start_time:start_time,
                end_time:end_time,
                collection_name:collection_name,
                collection_description:collection_description,
                offlineTag:offlineTag,
                deleteTag:deleteTag,
                activity_id:activity_id
            });
        var data1 =await mysql('association_collection')
            .max('collection_id');
        var collection_id=data1[0]['max(`collection_id`)'];
        for(var i=0;i<photoList.length;i++){
            var photo=photoList[i];
            await  mysql('collection_photo')
                .insert({
                    collection_id:collection_id,
                    url:photo
                });
        }
        ctx.response.status = 200;
    }catch (e) {
        ctx.response.status=500;
    }

}