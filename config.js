const CONF = {
    port: '5757',
    rootPathname: '',

    /**
     * MySQL 配置，用来存储 session 和用户信息
     * 将此处改为本地数据库配置
     */
    mysql: {
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'njuassociation',
        pass: 'Comeand',
        char: 'utf8mb4'
    },

};

module.exports = CONF;
