const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const association_id=ctx.query.association_id;
    var data=await mysql('vote_activity')
        .select('vote_activity.*')
        .where('association_id ',association_id )
        .andWhere('status',1);
    var res=[];
    for(var i=0;i<data.length;i++){
        var vote_id=data[i].activity_id;
        var options=await mysql('option')
            .select('option.*')
            .where('activity_id',vote_id);
        var data1=await mysql('association')
            .select('name')
            .where('id',data[i].association_id);
        var cur={
            activity_id:data[i].activity_id,
            association_id:data[i].association_id,
            start_time:data[i].start_time,
            end_time:data[i].end_time,
            vote_name:data[i].vote_name,
            vote_description:data[i].vote_description,
            vote_content:data[i].vote_content,
            vote_type:data[i].vote_type,
            options:options,
            association_name:data1[0].name
        }
        res.push(cur)
    }
    console.log(res[0].options)
    ctx.body=res
}