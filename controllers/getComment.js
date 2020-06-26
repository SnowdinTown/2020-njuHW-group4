const mysql=require('../middleware/mysql')
const moment=require('moment')

module.exports=async (ctx)=>{
    const moment_id=ctx.query.id;
    //const moment_id=1;
    let list =await mysql("comment")
        .select('comment_id','content','time','liked','open_id',
            'user_avatarUrl','user_name')
        .where('moment_id',moment_id)
        .andWhere('delete',0);

    for(let i=0;i<list.length;++i){
        list[i].time = moment(new Date(list[i].time)).format('YYYY-MM-DD HH:mm');
    }

    ctx.body = list;

 /**   const res=[];
    for(var i=0;i<commentList.length;i++){
        var comment=commentList[i];
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
  */
};