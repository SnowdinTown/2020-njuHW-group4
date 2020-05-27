/**
 * ajax 服务路由集合
 */
const router = require('koa-router')({
});
const controllers = require('../controllers');

// 关联路由与controllers
router.get('/',controllers.hello);

router.get('/test',controllers.testdb);


module.exports = router;