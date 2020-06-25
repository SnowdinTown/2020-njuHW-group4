const mysql=require('../middleware/mysql')

module.exports=async (ctx)=>{
    const activity_id=ctx.query.activity_id,
        open_id=ctx.query.open_id
    const association_id=await mysql('activity')
        .select('activity.association_id')
        .where('activity.activity_id',activity_id)
    const res = await mysql('association_manager')
        .count('open_id as isManager')
        .where({
            association_id: association_id[0],
            open_id: open_id
        });

    if(res[0].isManager) {
        ctx.body=true
    }else {
        ctx.body=false
    }
}