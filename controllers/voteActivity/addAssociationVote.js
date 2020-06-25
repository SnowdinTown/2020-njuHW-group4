const mysql = require('../../middleware/mysql');


module.exports = async (ctx) =>{
    const association_id=ctx.request.body.association_id,
       start_time=ctx.request.body.start_time,
        end_time=ctx.request.body.end_time,
        vote_name=ctx.request.body.vote_name,
        vote_description=ctx.request.body.vote_description,
        vote_content=ctx.request.body.vote_content,
        vote_type=ctx.request.body.vote_type,
        options=ctx.request.body.options;
    try{
        await mysql('vote_activity')
            .insert({
                association_id:association_id,
                start_time:start_time,
                end_time:end_time,
                vote_name:vote_name,
                vote_description:vote_description,
                vote_content:vote_content,
                vote_type:vote_type
            });
        var vote_id;
        var data= await mysql('vote_activity')
            .max('activity_id');
        vote_id=data[0]['max(`activity_id`)'];
        for(var i=0;i<options.length;i++){
            var option=options[i];
            await mysql('option')
                .insert({
                    activity_id:vote_id,
                    option_content:option.option_content,
                    option_type:option.type
                });
        }
        ctx.response.status=200;
        var c={
            msg:'True'
        }
        ctx.response.body=c
    }catch(e) {
        ctx.response.status=500;
        var c={
            msg:'False'
        }
        ctx.response.body=c
    }

}