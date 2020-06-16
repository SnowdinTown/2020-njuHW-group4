const mysql=require('../middleware/mysql')

module.exports=async (ctx)=>{
    const moment_id=ctx.query.id,
        open_id=ctx.query.open_id,
        comment=ctx.query.comment;

    try {
        const id=await mysql('comment').insert({
            moment_id:moment_id,
            open_id:open_id,
            content:comment,
        }).returning('comment_id');
    }catch (e) {
        ctx.state={
            code:-1,
            data:{
                msg:e.sqlMessage //数据库报错信息
            }
        }
    }
}
