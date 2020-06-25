const mysql = require('../../middleware/mysql');
module.exports = async (ctx) =>{
    ///const activity_id=ctx.request.body.activity_id;
    activity_id=1
    try {
        await mysql('vote_activity')
            .where('activity_id', activity_id)
            .update({
                status:0
            })

        ctx.response.status = 200;
        var c={
            msg:'True'
        }
        ctx.response.body=c
    }catch (e) {
        ctx.response.status=500;
        var c={
            msg:'False'
        }
        ctx.response.body=c
    }
}