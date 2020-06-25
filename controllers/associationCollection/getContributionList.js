const mysql=require('../../middleware/mysql')
module.exports = async (ctx) => {
    const activity_id =ctx.query.activity_id;
    const temp=await mysql('association_collection')
        .select('collection_id')
        .where('activity_id',activity_id)
    var collection_id=temp[0].collection_id
    const contributionList=await mysql('contribution')
        .select('contribution_id','open_id','name','time','title','writing')
        .where('collection_id',collection_id);

    var res=[];
    for(var i=0;i<contributionList.length;i++){
        var contribution=contributionList[i];
        var contribution_id=contribution.contribution_id;
        var photoList=await  mysql('collection_photo')
            .select('photo_id','photo_url')
            .where('contribution_id',contribution_id);
        var cur={
            contribution_id:contribution.contribution_id,
            open_id:contribution.open_id,
            name:contribution.name,
            time:contribution.time,
            title:contribution.title,
            writing:contribution.writing,
            photoList:photoList
        }
        res.push(cur)
    }
    ctx.body=res
};