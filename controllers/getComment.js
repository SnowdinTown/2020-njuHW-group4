const mysql=require('../middleware/mysql')
const moment=require('moment')

module.exports=async (ctx)=>{
    const moment_id=ctx.query.id,limited=ctx.query.limited,offset = ctx.query.offset;
    //const moment_id=1;
    const commentList=await mysql("comment")
        .join('csessioninfo','comment.open_id','csessioninfo.open_id')
        .select('comment.comment_id','csessioninfo.user_info','comment.content','comment.time','comment.liked','comment.open_id')
        .where('moment_id',moment_id)
        .andWhere('comment.comment_id','>',offset)
        .andWhere('comment.delete',0)
        .limit(limited)

    const res=[];
    for(var i=0;i<commentList.length;i++){
        var comment=commentList[i];
        var user_info=JSON.parse(comment.user_info)
        var cur={
            id:comment.comment_id,
            username:user_info.nickName,
            userphoto:user_info.avatarUrl,
            comment:comment.content,
            time:moment(new Date(comment.time)).utcOffset("+08:00").format('YYYY-MM-DD HH:mm:ss'),
            liked:comment.liked,
            user_id:comment.open_id
        }
        console.log(user_info.nickName);
        res.push(cur);
    }
    console.log(res);
    ctx.body=res;
}