const mysql = require('../../middleware/mysql');

module.exports = async (ctx) => {
    const association_id = ctx.query.association_id;

    ctx.body = await mysql('message_wall')
        .select({message_id:'message_id',content:'content',date:'date',
        likes:'likes',user_name:'user_name',user_avatarUrl:'user_avatarUrl'})
        .where('association_id',association_id)
        .andWhere('status',1)

}