const mysql=require('../middleware/mysql')

module.exports=async (ctx)=>{
    const comemnt_id=ctx.query.id;

    try{
        await mysql('comment')
            .where('comment_id',comemnt_id)
            .update(`delete`,1);
        ctx.state = 200

    }catch (e) {
        ctx.state={
            code:-1,
            data:{
                msg:e.sqlMessage
            }
        }
    }
}