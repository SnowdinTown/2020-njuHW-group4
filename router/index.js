/**
 * ajax 服务路由集合
 */
const router = require('koa-router')({
});
const controllers = require('../controllers');

// 关联路由与controllers
router.get('/',controllers.hello);

router.get('/test',controllers.testdb);

router.get('/getUserInformationList',controllers.getUserInformationList);

router.get('/getComment',controllers.getComment);

router.get('/addComment',controllers.addComment);

router.get('/deleteComment',controllers.deleteComment);

router.get('/getMomentDetail',controllers.getMomentDetail);

router.get('/updateCommentLike',controllers.updateCommentLike);

module.exports = router;