const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const association_id = ctx.query.association_id,
        start_time = ctx.query.start_time,
        end_time=ctx.query.end_time,
        collection_name=ctx.query.collection_name,
        collection_description=ctx.query.collection_description,
        photoList=JSON.parse(ctx.query.photoList),
        offlineTag=ctx.query.offline,
        deleteTag=ctx.query.delete,
        location=ctx.query.location,
        wx_location=ctx.query.wx_location,
        category=ctx.query.category,
        img_src=ctx.query.image_src,
        ticket=ctx.query.ticket,
        offline = ctx.query.offline;
    var date=start_time.substr(0,10);
    var time=start_time.substr(11,8);
    const association_name = await mysql('association')
        .select('name')
        .where('id',association_id)
        .first();
    console.log(association_name.name)
    console.log(association_id,date,time,collection_name,collection_description,photoList,offlineTag,deleteTag,location,wx_location,category,img_src,ticket,offline)
    try {
        await mysql('activity')
            .insert({
                date:date,
                time:time,
                location:location,
                wx_location:wx_location,
                category:category,
                association_id:association_id,
                association_name:association_name.name,
                activity_intro:collection_description,
                activity_name:collection_name,
                image_src:img_src,
                ticket:ticket,
                offline:offline
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
            console.log(photoList[i])
            var photo=photoList[i];
            await  mysql('collection_photo')
                .insert({
                    collection_id:collection_id,
                    photo_url:photo
                });
        }
        ctx.body="success"
    }catch (e) {
        ctx.state={
            code:-1,
            data:{
                msg:e.sqlMessage //数据库报错信息
            }
        }
    }

}