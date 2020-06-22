/**
 * ajax 服务路由集合
 */
const router = require('koa-router')();
const controllers = require('../controllers/');

// 关联路由与controllers
router.get('/',controllers.hello);

router.get('/test',controllers.testdb);

router.get('/weapp/getUserInformationList',controllers.getUserInformationList);

router.get('/weapp/getComment',controllers.getComment);

router.get('/weapp/addComment',controllers.addComment);

router.get('/weapp/deleteComment',controllers.deleteComment);

router.get('/weapp/getMomentDetail',controllers.getMomentDetail);

router.get('/weapp/updateCommentLike',controllers.updateCommentLike);

//association_album
router.get('/weapp/getAssociationAlbums',controllers.associationAlbum.getAssociationAlbums);

router.get('/weapp/getAssociationAlbumDetail',controllers.associationAlbum.getAssociationAlbumDetail);

router.post('/weapp/createAssociationAlbum',controllers.associationAlbum.createAssociationAlbum);

router.post('/weapp/deleteAssociationAlbum',controllers.associationAlbum.deleteAssociationAlbum);

router.post('/weapp/addPhotos',controllers.associationAlbum.addPhotos);

router.post('/weapp/deletePhotos',controllers.associationAlbum.deletePhotos);

router.post('/weapp/updatePhotoDescription',controllers.associationAlbum.updatePhotoDescription);

//message_wall
router.get('/weapp/getMessageWall',controllers.messageWall.getMessageWall);

router.get('/weapp/getAuditMessageList',controllers.messageWall.getAuditMessageList);

router.post('/weapp/addAuditMessage',controllers.messageWall.addAuditMessage);

router.post('/weapp/deleteMessage',controllers.messageWall.deleteMessage);

router.post('/weapp/addMessage',controllers.messageWall.addMessage);

router.post('/weapp/updateMessageLikes',controllers.messageWall.updateLikes);

//originPart

router.get('/weapp/addAssociationJoiner',controllers.originController.addAssociationJoiner)

router.get('/weapp/getUserAssociationList',controllers.originController.getUserAssociationList)

module.exports = router;