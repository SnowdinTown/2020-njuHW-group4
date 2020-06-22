const mysql=require('../middleware/mysql')
const moment=require('moment')

module.exports=async (ctx)=>{
    const open_id=ctx.query.open_id;
    //const open_id="o4chG42YnTIfb9fQYQ5LidjXS76Y";
    //const open_id="o4chG412hg0qJLpdXyTNOAW4G3mk";
    const information=await mysql('association_joiner')
        .join('activity','association_joiner.association_id','activity.association_id')
        .join('association','activity.association_id','association.id')
        .select('activity.date','activity.time','association.image_src','activity.activity_name','association.name')
        .where('association_joiner.open_id',open_id)
    var res=[];
    for(var i=0;i<information.length;i++){
        var ifm=information[i];
        var activity_time=moment(JSON.stringify(ifm.date).substr(1,10)+' '+ifm.time).add(1,'days')
        var cur_time=moment()
        var dis=cur_time.diff(activity_time,"hour")
        if(dis<-24||dis>=0)continue
        var date=JSON.stringify(moment(ifm.date).add(1,'days')).substr(1,10);
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