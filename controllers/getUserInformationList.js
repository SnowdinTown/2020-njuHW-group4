const mysql=require('../middleware/mysql')
const moment=require('moment')

module.exports=async (ctx)=>{
    const open_id=ctx.query.open_id;
    //const open_id="o4chG42YnTIfb9fQYQ5LidjXS76Y";
    //const open_id="o4chG412hg0qJLpdXyTNOAW4G3mk";
    const information=await mysql('association_joiner')
        .join('activity','association_joiner.association_id','activity.association_id')
        .join('association','activity.association_id','association.id')
        .select('activity.activity_id','activity.date','activity.time','association.image_src','activity.activity_name','association.name')
        .where('association_joiner.open_id',open_id)
    var res=[];
    for(var i=0;i<information.length;i++){
        var ifm=information[i];
        var activity_time=moment(JSON.stringify(ifm.date).substr(1,10)+' '+ifm.time).add(1,'days')
        var cur_time=moment()
        var dis=cur_time.diff(activity_time,"hour")
        if(dis<-24||dis>=0)continue
        var date=JSON.stringify(moment(ifm.date)).substr(1,10);
        var cur={
            time:date.substr(0,4)+"年"+date.substr(5,2)+"月"+date.substr(8,2)+"日"+" "+ifm.time.substr(0,5),
            image_src:ifm.image_src,
            information:ifm.activity_name+"活动将于24小时后开始",
            name:ifm.name,
            id:ifm.activity_id
        }
        res.push(cur)
    }
    const collection_inf=await mysql('association_joiner')
        .join('association_collection','association_joiner.association_id','association_collection.association_id')
        .join('association','association_collection.association_id','association.id')
        .select('association_collection.activity_id','association_collection.start_time','association_collection.end_time','association.image_src','association_collection.collection_name','association.name')
        .where('association_joiner.open_id',open_id)
    for(var j=0;j<collection_inf.length;j++){
        var c_ifm=collection_inf[j];
        var c_start_time=c_ifm.start_time
        var c_end_time=c_ifm.end_time
        var d1=cur_time.diff(c_start_time,"second")
        var d2=cur_time.diff(c_end_time,"second")
        if(d1<0||d2>0)continue
        var c_cur={
            time:c_start_time.substr(0,4)+"年"+c_start_time.substr(5,2)+"月"+c_start_time.substr(8,2)+"日"+" "+c_start_time.substr(11,5),
            image_src:c_ifm.image_src,
            information:c_ifm.collection_name+"活动正在进行中",
            name:c_ifm.name,
            id:c_ifm.activity_id
        }
        res.push(c_cur)
    }
    const vote_inf=await mysql('association_joiner')
        .join('vote_activity','association_joiner.association_id','vote_activity.association_id')
        .join('association','vote_activity.association_id','association.id')
        .select('vote_activity.activity_id','vote_activity.start_time','vote_activity.end_time','association.image_src','vote_activity.vote_name','association.name')
        .where('association_joiner.open_id',open_id)

    for(var k=0;k<vote_inf.length;k++){
        var v_ifm=vote_inf[k];
        var v_start_time=v_ifm.start_time
        var v_end_time=v_ifm.end_time
        var v_d1=cur_time.diff(v_start_time,"second")
        var v_d2=cur_time.diff(v_end_time,"second")
        if(v_d1<0||v_d2>0)continue
        var v_cur={
            time:v_start_time.substr(0,4)+"年"+v_start_time.substr(5,2)+"月"+v_start_time.substr(8,2)+"日"+" "+v_start_time.substr(11,5),
            image_src:v_ifm.image_src,
            information:v_ifm.vote_name+"活动正在进行中",
            name:v_ifm.name,
            id:v_ifm.activity_id
        }
        res.push(v_cur)
    }
    ctx.body=res;
}