const mysql=require('../middleware/mysql')

module.exports=async (ctx)=>{
    const comment_id=ctx.query.id;
    try {
        var res=await mysql('comment')
            .select('liked')
            .where('comment_id',comment_id);

        await mysql('comment')
            .where('comment_id',comment_id)
            .update({
                liked:(res[0].liked+1),
                thisKeyIsSkipped:undefined
            });
        ctx.status = 200;
    }catch (e) {
        ctx.state={
            code:-1,
            data:{
                msg:e.sqlMessage //数据库报错信息
            }
        }
    }
}