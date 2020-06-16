const mysql=require('../middleware/mysql')

module.exports=async (ctx)=>{
    const open_id=ctx.query.open_id;
    //const open_id="o4chG42YnTIfb9fQYQ5LidjXS76Y";
    const information=await mysql('user_ticket')
        .join('activity','user_ticket.activity_id','activity.activity_id')
        .join('association','activity.association_id','association.id')
        .select('activity.date','activity.time','association.image_src','activity.activity_name','association.name')
        .where('user_ticket.open_id',open_id)
    var res=[];
    for(var i=0;i<information.length;i++){
        var ifm=information[i];
        var date=JSON.stringify(ifm.date).substr(1,10);
        console.log(date)
        var cur={
            time:date.substr(0,4)+"年"+date.substr(5,2)+"月"+date.substr(8,2)+"日"+" "+ifm.time.substr(0,5),
            image_src:ifm.image_src,
            information:ifm.activity_name+"活动将于24小时后开始",
            name:ifm.name
        }
        res.push(cur)
    }
    ctx.body=res;
}