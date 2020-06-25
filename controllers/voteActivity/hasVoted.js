const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const open_id=ctx.query.open_id,
        activity_id=ctx.query.activity_id;
    var data=await mysql('vote_activity')
        .join('option','vote_activity.activity_id','option.activity_id')
        .join('answer','option.option_id','answer.option_id')
        .select('vote_activity.vote_name')
        .where('vote_activity.activity_id',activity_id)
        .andWhere('answer.open_id',open_id);
    var c
    if(data.length!==0){
        c={
            msg:"True"
        }
    }else{
        c={
            msg:"False"
        }
    }
    ctx.body=c
}