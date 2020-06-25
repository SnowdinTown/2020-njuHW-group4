const mysql=require('../../middleware/mysql')
module.exports = async (ctx) => {
    const contribution_id =ctx.query.contribution_id;
    const contributionList=await mysql('contribution')
        .select('contribution_id','collection_id','open_id','name','time','title','writing')
        .where('contribution_id',contribution_id);

    var res=[];
    for(var i=0;i<contributionList.length;i++){
        var contribution=contributionList[i];
        var photoList=await  mysql('collection_photo')
            .select('photo_id','photo_url')
            .where('contribution_id',contribution_id);
        var cur={
            contribution_id:contribution.contribution_id,
            collection_id:contribution.collection_id,
            open_id:contribution.open_id,
            name:contribution.name,
            time:contribution.time,
            title:contribution.title,
            writing:contribution.writing,
            photoList:photoList
        }
        res.push(cur)
    }
    ctx.body=res[0]
};