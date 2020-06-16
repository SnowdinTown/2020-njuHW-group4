const mysql=require('../middleware/mysql')
const time=require('moment')

module.exports=async (ctx)=>{
    //const moment_id=ctx.query.id;
    const moment_id=1;
    const momentDetail=await mysql('moment')
        .join('association','moment.association_id','association.id')
        .select('moment.association_name','association.image_src','moment.content','moment.date','moment.liked')
        .where('moment.moment_id',moment_id)
    var moment=momentDetail[0];
    var cur={
        associationName:moment.association_name,
        associationPhoto:moment.image_src,
        moment_content:moment.content,
        moment_time:time(new Date(moment.date)).utcOffset("+08:00").format('YYYY-MM-DD HH:mm:ss'),
        moment_liked:moment.liked
    }
    ctx.body=cur;
}