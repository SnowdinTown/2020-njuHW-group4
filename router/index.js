/**
 * ajax 服务路由集合
 */
const router = require('koa-router')();
const controllers = require('../controllers/');

// 关联路由与controllers
router.get('/hello',controllers.hello);

router.get('/test',controllers.testdb);

router.get('/weapp/getUserInformationList',controllers.getUserInformationList);

router.get('/weapp/getComment',controllers.getComment);

router.get('/weapp/addComment',controllers.addComment);

router.get('/weapp/deleteComment',controllers.deleteComment);

router.get('/weapp/getMomentDetail',controllers.getMomentDetail);

router.get('/weapp/updateCommentLike',controllers.updateCommentLike);

router.get('/weapp/getWhetherManager',controllers.getWhetherManager)

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

router.get('/weapp/addAssociationJoiner',controllers.originController.addAssociationJoiner);

router.get('/weapp/getUserAssociationList',controllers.originController.getUserAssociationList);

//collection

router.get('/weapp/addAssociationCollection',controllers.associationCollection.addAssociationCollection);
router.get('/weapp/addAssociationCollection',controllers.associationCollection.addAssociationCollection);

router.get('/weapp/getContributionList',controllers.associationCollection.getContributionList);

router.get('/weapp/getContribution',controllers.associationCollection.getContribution);

router.get('/weapp/getAllCollectionList',controllers.associationCollection.getAllCollectionList);

router.get('/weapp/getAssociationCollectionList',controllers.associationCollection.getAssociationCollectionList);

router.get('/weapp/addUserContribution',controllers.associationCollection.addUserContribution);

router.get('/weapp/getCollection',controllers.associationCollection.getCollection);

//vote

router.post('/weapp/addAssociationVote',controllers.voteActivity.addAssociationVote);

router.get('/weapp/getAllVotes',controllers.voteActivity.getAllVotes);

router.get('/weapp/getAssociationVotes',controllers.voteActivity.getAssociationVotes);

router.post('/weapp/deleteAssociationVote',controllers.voteActivity.deleteAssociationVote);

router.get('/weapp/getVoteById',controllers.voteActivity.getVoteById);

router.post('/weapp/addAnswer',controllers.voteActivity.addAnswer);

router.get('/weapp/hasVoted',controllers.voteActivity.hasVoted);


router.get('/weapp/addAssociationJoiner',controllers.originController.addAssociationJoiner)
router.get('/weapp/getAllActivityList',controllers.originController.getAllActivityList)
router.get('/weapp/addAssociationActivity',controllers.originController.addAssociationActivity)
router.get('/weapp/getActivityDetail',controllers.originController.getActivityDetail)
router.get('/weapp/getAssociationActivityList',controllers.originController.getAssociationActivityList)
router.get('/weapp/getUserAssociationList',controllers.originController.getUserAssociationList)
router.get('/weapp/deleteUserJoinedAssociation',controllers.originController.deleteUserJoinedAssociation)


module.exports = router;