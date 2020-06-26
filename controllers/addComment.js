const mysql=require('../middleware/mysql')

module.exports=async (ctx)=>{
    const moment_id=ctx.query.id,
        open_id=ctx.query.open_id,
        comment=ctx.query.comment,
        user_avatarUrl=ctx.query.user_avatarUrl,
        user_name=ctx.query.user_name;

    try {
        ctx.body = await mysql('comment').insert({
            moment_id:moment_id,
            open_id:open_id,
            content:comment,
            user_name:user_name,
            user_avatarUrl:user_avatarUrl,
            delete:0
        }).returning('comment_id');
        ctx.state = 200
    }catch (e) {
        ctx.state={
            code:-1,
            data:{
                msg:e.sqlMessage //数据库报错信息
            }
        }
    }
}
