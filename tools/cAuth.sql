-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-10-12 12:30:29
-- 服务器版本： 5.7.18
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cAuth`
--

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(32) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wx_location` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_id` int(32) NOT NULL,
  `association_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_intro` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` tinyint(1) NOT NULL DEFAULT '0',
  `offline` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `activity`
--

INSERT INTO `activity` (`activity_id`, `date`, `time`, `location`, `wx_location`, `category`, `association_id`, `association_name`, `activity_name`, `activity_intro`, `image_src`, `ticket`, `offline`, `create_time`, `delete`) VALUES
(1, '2019-10-19', '18:00:00', '南京大学仙林校区', '{\"name\":\"南京大学(仙林校区)\",\"address\":\"江苏省南京市栖霞区仙林大道163号\",\"latitude\":32.119818,\"longitude\":118.957954}', '文艺汇演', 1, '南大社团小助手', '一柒一会社团巡礼', '（压力测试使用，非真实活动）\n\n“一柒一会·南得一巡”\n\n第十七届社团巡礼月闭幕晚会\n\n5.21周日 18：30\n\n扫码即可观看精彩直播\n\n小屏播放可发送弹幕评论', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538646925594-HbVuFSQal.jpg', 1, 0, '2018-10-04 09:55:31', 0),
(2, '2018-11-02', '20:00:00', '南京大学仙林校区', '{\"name\":\"南京大学(仙林校区)\",\"address\":\"江苏省南京市栖霞区仙林大道163号\",\"latitude\":32.119818,\"longitude\":118.957954}', '文艺汇演', 1, '南大社团小助手', '超越自我街舞大赛', '（压力测试使用，非真实活动）届时不见不散哦，线下领票请于10.30到五食堂门口领取', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538647015405-_88Edb-Ha.jpg', 1, 0, '2018-10-04 09:56:59', 0),
(3, '2018-10-06', '13:30:00', '仙林校区方肇周体育馆', '{\"name\":\"方肇周体育馆\",\"address\":\"江苏省南京市栖霞区仙林大道163号南京大学仙林校区内\",\"latitude\":32.1127,\"longitude\":118.9566}', '文艺汇演', 1, '南大社团小助手', '2018羽毛球大赛', '（压力测试使用，非真实活动）方肇周体育馆羽毛球大赛，等你来战，快来报名吧，线下报名地址：5食堂门口', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538647238722-qEEFjRSft.jpg', 1, 0, '2018-10-04 10:00:47', 0);

-- --------------------------------------------------------

--
-- 表的结构 `activity_ticket`
--

CREATE TABLE `activity_ticket` (
  `activity_id` int(32) NOT NULL,
  `total` int(32) NOT NULL,
  `remain` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `activity_ticket`
--

INSERT INTO `activity_ticket` (`activity_id`, `total`, `remain`) VALUES
(1, 400, 396),
(2, 200, 198),
(3, 400, 399);

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`open_id`, `password`) VALUES
('o4chG412hg0qJLpdXyTNOAW4G3mk', '4839889'),
('o4chG40kKyB48WMSs0O8rtC02f1c', '123456789'),
('o4chG40kKyB48WMSs0O8rtC02f1c', '123456789');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(32) NOT NULL,
  `association_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `association_id`, `title`, `association_name`, `date`, `url`, `image_src`, `open_id`, `delete`) VALUES
(1, '1', '“南京大学社团”微信小程序正式上线啦~', '南大社团小助手', '2018-10-04 09:39:57', 'https://mp.weixin.qq.com/s/CsIgOLuYLf9JKk6F4IZUxA', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538645992832-NhJmZXrFo.png', 'o4chG412hg0qJLpdXyTNOAW4G3mk', 0),
(2, '1', '可以从小程序中搜索我了哦', '南大社团小助手', '2018-10-04 09:47:58', 'https://mp.weixin.qq.com/s/BCjiZs4YBBSSIMJkrjslFQ', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538646473342-Vct-w1nYM.gif', 'o4chG412hg0qJLpdXyTNOAW4G3mk', 0),
(3, '1', '我是南大社团小助手，请多指教', '南大社团小助手', '2018-10-04 09:49:42', 'https://mp.weixin.qq.com/s/CsIgOLuYLf9JKk6F4IZUxA', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538646578701-KI05WDM_U.jpg', 'o4chG412hg0qJLpdXyTNOAW4G3mk', 1),
(4, '5', '这里有一只小黑猫等你领回家哦～', '宠物之家', '2018-10-11 19:34:06', 'https://mp.weixin.qq.com/s/PUnst8OBTWm7InHsBATGVQ', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539286438141-Vv-0SxGyJ.jpg', 'o4chG412hg0qJLpdXyTNOAW4G3mk', 0),
(5, '5', '领养 | 假期归来能带我回家吗', '宠物之家', '2018-10-11 19:36:02', 'https://mp.weixin.qq.com/s/-6OWp7EeV95uyocr6jfmfA', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539286557738-kUFeV2CGx.jpg', 'o4chG412hg0qJLpdXyTNOAW4G3mk', 0),
(6, '5', '领养 | 小忠犬', '宠物之家', '2018-10-11 19:36:55', 'https://mp.weixin.qq.com/s/dGnXZpQd-fHPBOF5PFun8A', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539286595782-Cstq5eog8.jpg', 'o4chG412hg0qJLpdXyTNOAW4G3mk', 0);

-- --------------------------------------------------------

--
-- 表的结构 `article_read`
--

CREATE TABLE `article_read` (
  `article_id` int(32) NOT NULL,
  `read` int(32) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `article_read`
--

INSERT INTO `article_read` (`article_id`, `read`, `delete`) VALUES
(1, 11, 0),
(2, 11, 0),
(3, 17, 1),
(4, 3, 0),
(5, 4, 0),
(6, 14, 0);

-- --------------------------------------------------------

--
-- 表的结构 `association`
--

CREATE TABLE `association` (
  `id` int(32) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_english` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association`
--

INSERT INTO `association` (`id`, `name`, `name_english`, `category`, `image_src`, `intro`) VALUES
(1, '南大社团小助手', 'Nanjing University Association Helper', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538645773043-vEdK2-3Ds.jpg', '我是南大社团小助手，会发布一些重要公告哦~'),
(2, '林泉钢琴社', 'NJU Linquan Piano Association', '音乐', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280904301-8KvoWkIoo.jpg', '南京大学林泉钢琴社(Lyreland)，成立于2003年5月，是由一群热爱钢琴音乐的伙伴们成立的艺术类社团，历年荣膺南京大学十佳社团称号。社团每学期带来两次高品质音乐会：学期初的流行音乐会以及学期末的古典音乐会。流行音乐会风格多样，形式丰富，为校园内喜欢尝试多种类型音乐的同学搭建了分享与交流的舞台；古典音乐会则以更为严谨严肃的风格，为众多古典音乐爱好者提供了欣赏古典乐、分享对乐曲的理解的契机，表演的曲目大多具有一定难度，也对表演者自身对乐曲的理解有较高要求。此外，社团成员亦会不定期举行特色音乐会。'),
(3, '阅读与出版协会', 'Reading And Publishing Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261062217-8jDeATWT9.jpg', '阅读与出版协会（简称阅出或R&P）是由信息管理学院于2014年全新打造的学术科技类社团，旨在为喜欢阅读、热爱书籍和出版事业的同学提供一个展现自我、交流创意、实现梦想的平台。协会致力于“阅读”与“出版”两个方向，以“读好书，做好书”为宗旨，将“读”与“编”相结合，在分享阅读经验、传递知识信息的同时，凝聚了一批爱好编辑出版工作的良师益友，共同推动图书馆领域与编辑出版领域的学术研究。'),
(4, '台球协会', 'NJU Billiards Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261187214-KuFOCYDi_.jpg', '南京大学台球协会本着自主管理、服务会员的原则创办、发展。以“发展台球运动，繁荣台球文化”为宗旨。团结校内台球运动爱好者积极促进南大台球文化的发展；推动台球运动的普及和技术水平的提高，增进会员之间的友谊；组织会员聚会与校内比赛，加强与各高校台球组织的联系与合作，积极组织参加全国、省市级比赛，营造良好竞赛文化。'),
(5, '宠物之家', 'NJU Pet House Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261327226-lEUoOsDUI.jpg', '南京大学宠物之家是南京大学唯一一个以动物为主体的公益类社团，追本溯源已有八年的历史。从一个民间组织逐渐发展至百余人的社团，可见我们的魅力所在。宠物之家的宗旨在于对校园中的受伤的流浪猫狗进行救助与暂时的管理，同时进行长期的喂养或看护。鉴于校园中喵星人与汪星人的数量比，社团的主体是喵而不是汪。在宠物之家，你看到校园里的每一只喵都会有一种妈妈见到儿子的感觉，很亲切，会觉得它和你是一家人。我们欢迎爱撸猫、有奉献心、有爱心的你来加入我们。'),
(6, 'FIRE嘻哈协会', 'NJU FIRE Hip-hop Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539278539558-oZ1FnC_U7.jpg', 'FIRE嘻哈协会是南京大学以交流、推广嘻哈文化为核心的社团。在FIRE你绝对可以发现全校最酷的人，做着最酷的事。FIRE的有着与众不同的社团文化。我们追求Freedom(自由)、Innovation(创新)、Reality(真实)、Excellence(卓越)。FIRE嘻哈协会致力于宣传充满正能量的HIPHOP文化，成为校园青春文化中的一支蓬勃力量。'),
(7, '排球协会', 'NJU Volleyball Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261383284-kBptaxTrG.jpg', '南大排协致力于推广普及排球运动，负责组织南京大学校内排球院系联赛，承担南京大学校业余排球队训练等事务。我们致力于让更多人成为排球爱好者。推动高校排球运动的发展，以及关心、支持爱好排球的学生群体，推动排球运动的普及和技术水平的提高，为增强同学们的体质、丰富同学们的学余生活、广泛开展阳光体育服务。'),
(8, '环境协会', 'NJU Evironment Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261753522-sp05eEoDx.jpg', '\"历史：创始于1984年，至今已34年，与环境学院共同成长。\r\n理念：协会以“关注环保、服务社会，热爱自然、行胜于言”为理念，致力于践行环保，积极宣传，提高社会环保意识。\r\n近期荣誉：蝉联校十佳社团、省十佳高校环保公益社团、省优秀志愿服务项目、校级重点社会实践基地等\"'),
(9, '林下诗社', 'Linxia Poetry Association', '文学', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261801539-8lRmGrpsX.jpg', '林下诗社，是南京大学首个古典诗词创作与交流类校级学生社团，自2015年5月27日成立以来，已有核心成员55人。古以水边林下指有清韵之致，恰社团成立于仙林，故取林下为名，意在弘扬中华优秀传统文化，推动当今校园诗词发展。'),
(10, '长风社', 'Changfeng Law Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539261866998-6E50iNJkV.jpg', '南京大学长风社是一个已经历经了20年岁月的学术性、公益性社团，一向秉持“关注法律正义，体现大学精神”的理念。曾斩获“江苏省高校十佳优秀社团”“南京大学优秀社团”等荣誉称号。长风社的活动主要针对法律相关知识展开，以专业性为中心并充分考虑趣味性，旨在引导社员和校内外参与活动的人们较为深入地了解法律学，以领略其魅力；同时也举办丰富娱乐、休闲活动，旨在通过较为轻松的方式构建社员对于法律学术和职业的基本认识。除此之外，长风社也力图构建一个供对法律有兴趣的人们就各种学术、实务问题进行交流和讨论的平台。暑假期间，长风社则会针对与法律有关的社会现实问题开展社会实践活动。'),
(11, '拉丁舞社', 'NJU Latin Association', '舞蹈', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539281106027-yuMC1w1SZ.jpg', '南京大学拉丁舞社至今已经走过了十二个年头。作为一个兴趣爱好类的社团，舞社出镜率非常高：军训晚会、新生文艺汇演、社团巡礼晚会、各院系迎新晚会、南财拉丁舞比赛等校内外大大小小的活动，都活跃着舞社小哥哥小姐姐的身影。今年5月，舞社所有的小伙伴们还一起筹备了十二周年庆专场晚会。舞社共有基础班、提高班和表演班三个班型供大家选择，无论你是零基础学员还是Dance Queen/King，都可以在这里一展风采。周中有表演班成员带领的基本功训练，周末不出校门就可以接受来自外聘专业老师的拉丁舞教学。并且，每位社员都可以享受体育免打卡的福利哦！悄咪咪地再补充一句，拉丁舞社还是本年度的十佳社团之一噢！'),
(12, '国学社', 'NJU Sinology Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262087121-hweU-HhSE.jpg', '南京大学国学社秉承学衡派遗风，将“观乎人文以化成天下”作为社训，弘扬传统文化，兼顾学术知识。社团的一大特色即每学期的雅集活动与长期开展的晨读活动，同时不定期举办讲座与进行社内交流活动，以冀培养社员的人文学术素养，继承南大悠久的国学传统与厚重的文化气息。社团宗旨：本社力求为爱好国学抑或传统文化的同学们构建一个交流、学习的平台。使诸君能与各位同仁一道致力于继承南大的悠悠传统，在今日国人都专注于面向未来奔行的时候，能不忘记我们民族还有着那令人无限自豪的伟大的过去'),
(13, '魔方社', 'NJU Rubik\'s Cube Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539278954736-mwaamVsMz.jpg', '魔方社从创立以来已经九年多了，九年来，南大魔方社见证了南京魔方界甚至是中国魔方速拧运动的发展。曾经数次打破世界纪录的“魅影”三阶魔方，就是由南大研究生费付聪设计的。'),
(14, '永遇乐相声社', 'Yongyule Crosstalk Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262175235-b_RY56B92.jpg', '南京大学永遇乐相声社成立于2010年，到了2018年，永遇乐相声社已经走过了八个年头。八年过去了，永遇乐相声社非但没有倒闭（这说的也太惨了），反而不断取得佳绩，连续五年荣获“十佳社团”称号，并广泛受到校内外师生的好评。这些成绩离不开各位老师同学对我们的支持，更加离不开社团内所有热爱相声的同学们的不懈努力。所以现在，我们衷心的希望看到这段话的你，能够成为我们当中的一分子！'),
(15, '口述历史协会', 'NJU Oral History Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277496612-pAtqEMEoQ.jpg', '南京大学口述历史协会原称校史组，以校史口述历史为起点开始口述历史采集与研究，以校史研究室和历史学院为依托，在校、院两级大力支持和指导老师悉心引导下逐渐发展、成长。校史组规模逐渐发展壮大，并于2016年更名为南京大学口述历史协会。口述历史协会的宗旨：以口述历史为手段，记录、研究南京大学校史以及其他专门史，充分调动广大历史专业学生和对口述史有兴趣的学生的积极性，提高广大同学的历史素养，爱校荣校，为南京大学校史研究添砖加瓦，为口述历史研究做出力所能及的贡献。'),
(16, 'TNTfitness健身协会', 'NJU TNT Fitness Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539279557522-bIdqBy1Kn.jpg', '创立于2009年，旨在鼓励同学们参与健身运动和交流，同时提供专业的健身指导。TNT代表着 train and transform，同时象征着要以爆炸般的勇气与毅力去锻炼，最终一定会有令人惊喜的改变。这十多年里，培养了一批身怀绝技的男神女神们，他们以专业的训练技巧与过人的毅力完成了自己的蜕变。他们中的大多数成为了TNT的专属教练，负责为加入健身协会的小伙伴们提供集体的公开课以及专项指导。健身运动其实是一系列运动的总称，例如力量举，健美，健体，街头健身，cross fit等等。而在TNT中，我们有着各个方向的健身高手，能够给到你最专业最全面最适合你的指导与帮助。加入TNT后，你们可以参加周末的公开课，也可以报名私教课接受一对一的指导，还可以免打卡哟。我们期待和你一起，在TNT完成身体上的蜕变，加油吧！'),
(17, 'AIESEC南京大学', 'NJU AIESEC', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539281246482-5RaLpDq-o.jpg', 'AIESEC其实是诞生于1948年第二次世界大战后的一个全球最大的由青年资助领导的非营利组织，致力于让青年学生发展自身领导力，是一个提供全球大学生跨国商业实习、文化交流，实践性领导力岗位锻炼以及学习机会的国际平台。AIESEC南京大学成立于2007年，今年是AIESEC 南京大学走过的第11个年。2006年，国际应用文科强化班的杨尧遇见AIESEC北京大学的主席，这场见面预示着AIESEC南京大学的成立。'),
(18, '武术协会', 'NJU Martial Art Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539275871453-iV7e8l3fg.jpg', '南京大学武术协会简称南大武协，创建自1983年，今年已经35岁啦，是一个历史非常悠久的社团。南大武协有着非常独特的社团结构，发展至今已拥有双截棍、截拳道、长拳、咏春拳、太极拳、八卦掌、梅花拳和通备拳八个分会，并且正在筹建散打队，加入武协的同学可以自由选择自己喜爱的拳种，没有任何限制。武协对于入社没有任何要求，不需要有任何基础。不过，武协里有很多的大佬，除了给大家提供指导，颜值也是爆表呢。'),
(19, '人工智能协会', 'NJU AI Association', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277117363-GNmPkCZl1.jpg', '南京大学人工智能协会。依托于工程管理学院、计算机科学与技术系和人工智能学院。通过为南京大学校内人工智能爱好者提供学习交流平台，定期组织人工智能爱好者线下交流活动，邀请周志华教授团队、“海外千人”林良才教授团队等人工智能领域的专家和学者与爱好人工智能的同学面对面交流学习，旨在创建南京大学学术研究、技术分享、新科技交流的学习型社团。我们欢迎一切对人工智能感兴趣的萌新加入我们，和我们一起在人工智能的世界中遨游！无论你是一枚人工智能小白，还是对人工智能略有了解准备一展身手的潜力巨星，只要你身怀对人工智能的热爱，人工智能协会便会给你想要的舞台！'),
(20, '0206电影沙龙社', '0206 Film Salon Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262215320-25zH1T8Af.jpg', '0206电影沙龙社创办于2002年，我们的创始人希望社团可以活到2006年，然而现在一不小心已经走过了16个年头。我想这都是因为南大人对电影的热爱从未停止。希望喜欢电影的你也可以加入我们，把这份热爱延续下去！这是我写给电影的土味情话：在电影的梦中我们不愿醒来，都成为了光影的梦想家；在闪烁的银幕面前我们平等地抬头仰望，都化为了光影的朝圣者，黑暗隐去了现实，电影成为了真正通往仙境的桥梁。'),
(21, '古琴社', 'NJU Guqin Association', '音乐', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280986815-yHL3cEkpR.jpg', '南京大学古琴社成立于2004年11月，并于2009年增设箫部，是南京大学唯一以古琴为切入点弘扬传统民族文化的社团，至今历历十余载，聘请音乐家协会理事、古琴专业委员会理事、金陵派古琴艺术传承人桂世民先生为艺术指导老师。南大琴社旨在广泛团结古琴爱好者、民乐爱好者、乃至中国传统文化爱好者，以古琴为切入点，弘扬民族传统文化，让古琴“其曲仍高，其和不寡”，振千古之琴风，继往圣之绝响，同时使南大学子通过这一平台领略传统文化的独特魅力，提升自己的综合修养。'),
(22, '幻影魔术协会', 'Huanying Magic Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262314980-lNq_Bhtvu.jpg', '南京大学幻影魔术协会成立于2011年，旨在发展校园魔术文化，为校园魔术爱好者搭建交流平台，并多次评选为“十佳社团”。在这里，你不仅可以认识一群志同道合的朋友，还有机会和其它高校的魔术社团乃至职业魔术师进行交流。在这里，你们会学到奇妙的纸牌、硬币魔术，更可以接触到震撼的舞台魔术。同时，你还有充足的机会在一场场演出中展现自我，实现自己的梦想。'),
(23, '杨式太极拳协会', 'NJU Yang\'s Tai Chi Chuan Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539276322445-DS3ISC24Q.jpg', '2005年11月，南京大学杨式太极拳协会在鼓楼校区成立。2006年，浦口校区分会成立。协会成立以来，坚持在校内开展义务授拳活动。协会提倡天天习拳，本着服务同学的观念，每天晚上在国旗小广场上，都会有师兄带领大家练习太极功操和太极拳，风雨无阻，全年无休。实行冬练三九，夏练三伏的长期健身计划。'),
(24, '半人间沙龙社', 'Ban Renjian Salon Association', '文学', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262571660-_XSZY8bvV.jpg', '半人间沙龙社是一个非常年轻的社团，成立于2014年7月。提到沙龙社成立的初心，文艺一点来讲，就是让大家从彼此身上发现生活的另一种情怀，或是从他人的知识体系中找到思考的另外一种可能。我们希望通过沙龙这种形式，在大学校园里擦去时代的尘埃，看看我们留给自己的东西还有多少。'),
(25, '中医学社', 'NJU Chinese Medical Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539279845671-La-UvqlD8.jpg', '中医作为一种古老而独特的医术体系，代表了古典中国文明对于天人之际的观照与体认。南京大学中医学社力图提供这样一个平台，一方面在效用性的维度上让人们认识到中医作为一种医术体系其独到的施治手段与效果，另一方面则希望带领人们进入到古典医学自身的文化语境之中，体会古典中国文明中人与世界的存在关联。'),
(26, '无人机俱乐部', 'NJU UAV Club', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277327455-MF2x8MIzT.jpg', '南京大学AIRX无人机俱乐部，成立于2015年12月，是DJI大疆创新和南京大学电子学院共建俱乐部。以比赛、创新，服务为宗旨。丰富同学们的课余生活，培养动手能力，致力于校园文化服务。社团目前有组织部，宣传部，航拍工作室几个部门。'),
(27, '跆拳道协会', 'NJU Taekwondo Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262648709-PLXrfAgFt.jpg', '南大跆协，成立于2002年，为南京大学的跆拳道爱好者们提供了一个训练提高、交流切磋的平台，有着完善的管理体系、严谨的训练计划以及丰富的社团活动，于2016-2017年度和2017-2018年度被连续评为南京大学十佳社团。'),
(28, 'IT侠公益协会', 'NJU IT Men Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539262975485-deoUl8DPF.jpg', '我们IT侠创立的经历比较有趣，12年夏天，由于同学在电脑维修上吃亏被坑，在小百合NoteBook版的倡议下，志愿者团队“软件侠”迅速组建，旨在帮助师生解决系统、病毒等一系列软件问题。然而在后续服务中，发现硬件故障出现的频率居高不下，硬件侠顺势而生。2013年春，在团委支持下，软件侠、学生会网科部骨干、电器侠合并成立了IT侠，并一直活跃在公益IT维修的第一线。2017年，IT侠注册成为正式校级社团。团队于2013年荣获江苏省百优志愿服务“小薇奖”（重点项目），2018年获得南京大学公益创意策划大赛二等奖'),
(29, 'S&E演讲与口才俱乐部', 'NJU Speech And Eloquence Club', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539276889754-49ysGSu_x.jpg', 'S&E演讲与口才俱乐部是为同学提供公众演讲能力培养和口才训练提升的兴趣与技能提升类社团。我们社团一直以来所奉行的宗旨是——演讲，让思想更有力量!S&E为所有热爱演讲、渴望提升自己表达能力的同学提供一个交流提升的平台，共同进步共同成长，通过演讲传播一切值得传播的思想，在富有感染力的演讲中让思想更有力量。思想决定行动，行动决定未来。在聆听中，寻找点燃潜力的火种；在表达中，体会思想的碰撞和交融。'),
(30, '集庆会馆', 'Jiqing Chinese Opera Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263035535-IotvVfd3E.jpg', '集庆会馆是南京大学一批热爱戏曲艺术的同学自发组织的戏曲类社团，成立于2003年，至今已走过了15个春秋。社团旨在为戏曲爱好者提供讨论交流、互相学习的平台，提供社员学习戏曲演唱表演的机会，提升社员对戏曲的欣赏能力。为南大增添传统艺术的新活力，为传播与弘扬戏曲艺术和丰富校园文化贡献力量。'),
(31, 'Flappy轮滑社', 'NJU Flappy Roller-skating Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539275986962-SzttlXq9L.jpg', 'Flappy轮滑社成立于2006年，挂靠在南京大学体育部。这里汇聚了一群热爱轮滑的学生，无论是驰骋于校园的各个街道，还是在灯下起舞，轮滑一定是能够给你无限惊喜的一项体育运动。轮滑社的主要项目是平花，同时我们也有刹车、轮舞等项目.在这里我想说的是，轮滑社没有门槛！没有门槛！没有门槛！无论你之前接触过轮滑或者没有任何基础，只要你对轮滑感兴趣都可以入社和小伙伴们一起学习一起玩耍！！！'),
(32, '学生职业发展协会', 'NJU Students\' Career Development Association', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263143185-kjukve20H.jpg', '南京大学学生职业发展协会（Nanjing University Students’Career Development Association,简称SCDA）是由关心职业生涯发展的南京大学学生自发组成，在就业指导中心的指导下，不以盈利为目的的职业类社团，被评为“全国高校优秀社团”，“江苏省十佳社团”。'),
(33, '悦读书社', 'NJU IRS', '文学', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263201988-CXzSm27ip.jpg', '南京大学悦读书社（IRS）创办于2015 年9 月，是挂靠在南京大,学人文社会科学高级研究院和南京大学教务处下的一个学生自主研习研读的学术机构，也是“悦读经典”计划施行后创立的一个学术性社团。我们获得过学校的多次表彰，陈骏校长为我们发来贺信，人民网、新华网、中国青年等十多家知名媒体对我们进行过报道'),
(34, '第II剧社', 'Dear Modern Drama Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263458776-wy6LitjrI.jpg', '南京大学第Ⅱ剧社是南大本科生中唯一的学生话剧社团（没有第一剧社哦）。本着“艺术的道路上没有第一”的精神取名为“第Ⅱ剧社”。剧社旨在为全校热爱话剧艺术的同学提供参与话剧制作的平台， 让大家在体验中收获兴趣与快乐。2007年成立至今剧社共排演了30多部话剧。'),
(35, 'Maker 3D打印社', 'Maker 3D Printing Association', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263504407-K7BnZp18J.jpg', '南京大学Maker 3D打印社成立于2016年9月，是一个新兴的依托于南京大学众创空间和就业创业指导中心成立的校级社团。社团以众创空间的3D打印室为主要活动场所，开展包括3D打印知识介绍，建模培训，打印体验等一系列常规活动以及展翼计划等与其他组织合办的项目。社团从成立之初就得到学校以及外界知名3D打印相关企业的大力支持，并与校内青协等多个组织有良好合作关系。'),
(36, '拳击社', 'NJU Boxing Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263538822-h9U0NvevD.jpg', '拳击社是一个年轻的社团，成立于2016年春。在社团成立之初，我们的几位前任社长为了避免社团规模扩大太快而导致训练质量降低，一直致力于将拳击社打造成一个“小而精”的社团，这也导致社团知名度并不是很高。从去年开始，我们正式与江苏省拳击俱乐部建立了稳固的合作关系，自此我们的日常训练全部由俱乐部负责安排，由他们指派来自省队的专业运动员至仙林校内为咱们社员授课。我们有能力让每一位成员的训练质量受到保障'),
(37, '赣文化交流协会', 'NJU Jiangxi Culture Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263591812-mrs1Kmfhm.jpg', '赣文化交流协会，2013年11月30日成立于大学生活动中心，是NJU里首个地域文化类学生社团，简称“赣协”。赣协一直以来秉承着“传播赣鄱文化，推动江西崛起，展示南大风采，落实知行合一”的宗旨。协会旨在服务帮助就读于南大的江西学子，组织各类活动增强同学间的联系与交流，使其在校也能感受到家乡的温暖，并使江西学子对赣文化有更深层次的认识。同时协会旨在通过举办大型文化展示类活动向全校宣传江西独特文化，并与校内其他社团、其他高校赣协交流合作，共同促进赣文化的传播。'),
(38, 'Protege留学互助联盟', 'Protege Alliance', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263625293-yMlL64CDl.jpg', 'Protege留学互助联盟(Protege Alliance，简称PA),立志于帮助南京大学学子完成赴海外深造的愿望，从了解海外留学现状、确立目标、前期准备、申请、考试直至出国的全过程提供帮助；留学互助联盟隶属于郑钢基金会，整合校内外资源，与南京大学国际处等组织建立了合作关系，掌握一手留学资料，建立信息共享平台，组织各种形式活动，以共享信息为基础，帮助学生准确快速定位，确保成功实现自己的海外深造计划。'),
(39, '智能数据决策工作室', 'NOVA', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263662449-txXa-gGgn.jpg', '南京大学智能数据决策工作室，简称NOVA，前身是南京大学工程管理学院的工作室，于2017年转型为社团。Nova是在工程管理学院学术指导下独立开展工作和活动的学生群众组织，以创新性、技术性、学术性和合作性为主导思想，在国家大力倡导产业转型升级的大趋势下成立的一个具有全新理念的综合性学术科技类社团。我们以“知行合一”为宗旨，通过完成上级布置的各项数据分析决策任务，来践行理论和实践相结合的原则，为南京大学的智能科学与技术的学科建设贡献自己的一份力量。'),
(40, '射艺协会', 'NJU Archery Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263721418-yf2kpxsda.jpg', '南京大学射艺协会创立于2016年,是以传承与发扬传统射艺为宗旨的社团组织，也是南京最早成立的高校射艺社团之一，挂靠于南京大学体育部。射艺协会立志发扬传统射艺文化，成立伊始便得到体育部的高度重视与大力支持。'),
(41, '共济社会工作协会', 'NJU Socail Work Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263745526-OPbsT_GOp.jpg', '“潮落江平未有风，扁舟共济与君同”——十三年薪火相传，不改初心。南京大学共济社会工作协会始终坚持“助人自助”理念，以创造健康社会为目标，用社会工作的专业视角服务社会。社团定位于研究生和本科生共同参与的公益实践性质的学生社团，由研究生提供智力支持、身份支持，本科生参与具体项目和实践，以校外互动为主，兼顾校内资源。社团承接各类专业社工项目，提供社会工作专业服务；承接社会调查类研究项目；合作开展社会工作专业相关的学术活动和公益活动等。'),
(42, '知恬书画社', 'NJU Zhitian Association', '美术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280270726-LwJOmHYPS.jpg', '知恬书画社最早追溯于2005年，由一群对书画有着热情的学长学姐建立而来。发展至现在，知恬书画社已经发展成为一个书画爱好者的集结点了。知恬二字来源于《庄子··缮性》中的“古之治道者，以恬养知”，意思是“古时候研究道术的人，总是以恬静来调养心智”。而在繁忙而又多彩的大学生活中去追求内心的那片恬静也就是我们知恬书画社的宗旨。'),
(43, '文物爱好者协会', 'NJU Cultural Relics Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277653978-aFaY1KJjP.jpg', '南京大学文物爱好者协会成立于2003年，是所有对文物和博物馆感兴趣的南大学子的交流平台。南京大学文物爱好者协会，一直致力于在活动中带领大家走近文物，了解历史，体会文明的痕迹。我们组织了各样的活动，希望喜爱文物的大家能够相聚在这里，一起分享交流，体会到文物的无穷魅力。'),
(44, '独立制片社', 'NJU Independent Filmmaking Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277004377-TrcNtVw5e.jpg', '围绕着独立电影，我社团活动内容包括了独立电影研究、独立电影赏析、独立电影的拍摄前中后期、独立电影导演研究等等，旨在给喜欢独立电影的同学们提供活动空间'),
(45, '天文爱好者协会', 'NJU Astronomical Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277794967-JILiTc7YB.jpg', '南京大学天文爱好者协会成立于2000年，是一个以天文实践、科普活动为主的学术科技类社团，旨在将更多的天文学知识以通俗易懂的方式传达给广大同学，使同学走近天文，使天文走进生活。南京大学天文爱好者协会同时也是南京高校天文联合会的创始协会之一，与南京市其它高校的天文相关社团保持着良好的关系。天文爱好者协会的活动围绕天文科普，包括科普讲座、社内课程、校内外观测等。'),
(46, '鸣镝社', 'NJU Mingdi Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539279648689-cvIaNkX9f.jpg', '鸣镝是一个刚刚成立一年半的年轻社，鸣为响声，镝为箭头，鸣镝就是响箭。社团名称虽古朴，却是现代弓的聚集地，弓社以反曲弓为主，兼有（大佬玩的）美猎及复合弓种，为社团成员提供射箭教学、器材及训练场所。'),
(47, '英语俱乐部', 'NJU English Club', '语言', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280089556-UrogXGrPK.jpg', '南京大学英语俱乐部（缩写NEC）是历史最悠久的社团之一，曾多次获“十佳社团”称号。作为英语爱好者的聚集地，英语俱乐部为大家提供了广阔的英语交流平台，旨在促进文化交流，在活动中提高英语水平。'),
(48, '重唱诗社', 'NJU Chongchang Poetry Association', '文学', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280037753-jQxoGTpJR.jpg', '南京大学重唱诗社成立于2001年，是根植于南京大学的新诗创作与交流平台。社名“重唱”二字源于创社之初指导老师杜峻飞先生的诗集《合唱团》，以“重唱”代替“合唱”，后又寓意“重生而唱”，并成为诗社发展的重要理念。自建立以来，诗社凝聚了一大批诗歌爱好者，不少曾经的成员成为了当代优秀青年诗人。'),
(49, '南大SRTP', 'NJU Student Research Training Program', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539263112607-qSOrHV20b.jpg', '本科生科研训练计划（Student Research Training Program,简称SRTP），是为在校本科生设计的一种科研项目资助计划。SRTP采取项目化的运作模式，通过设立创新基金和本科生自主申报的方式确定立项并给予以资金支持，鼓励学生在导师指导下独立完成项目研究。SRTP的核心是支持本科生开展科研训练，学生参与SRTP的过程本质上是在进行研究性学习。它注重学生参与研究的学习过程，而并非期望本科生创造出多少原创性成果。'),
(50, '爬宠爱好者协会', 'NJU Reptiles Pet Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539266565293-MJjihgscQ.jpg', '南京大学爬宠爱好者协会是今年4月新成立的生活娱乐类社团，由生科院黄成教授担任指导老师，是全国高校首个爬宠主题社团哦'),
(51, '社会调查协会', 'NJU SIA', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539266646631-xM38QWIjS.jpg', '社调，又称射雕，全称南京大学社会调查协会，是挂靠在南京大学社会学院下的学术性社团，也是南京大学社会学院本科生中最具影响力的学术交流和社会实践平台之一。社调兼具专业性与开放性、学术性与娱乐性、实践性与理论性，实乃当代大学生“达则指点江山，穷则自娱自乐”的绝佳之所。'),
(52, '极真空手道协会', 'NJU KYOKUSHIN KARATE', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539266668744-rdHbZKCxt.jpg', '南京大学极真空手道协会是一个正式成立于2015年的年轻热血社团，我们围绕着“一拳一心，不负青葱岁月”的极真信念，旨在让热爱极真空手道的你在挥洒汗水、强身健体、广结良友的同时培养克服一切困难和无畏挑战的意志。'),
(53, 'CAC动漫社', 'CAC Animation Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539266739180-3ooPWE3PL.jpg', 'CAC动漫社成立于2001年，是南京大学唯一官方认证的ACG社团，在17年中我们从浦口走到仙林，从最初的两人组合发展为每年接纳约300名新社员的规模。CAC意为 comic animation cosplay。CAC的活动涵盖动画、漫画、游戏、cosplay、ACG音乐、宅舞、摄影、绘画等各个方面。成员来自不同的院系和年级，但加入了CAC大家庭的伙伴们都有着热爱二次元，热爱ACG文化的心。'),
(54, '红楼梦爱好者协会', 'A Dream of Red Mansions Association', '文学', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539266808513-IXot8SxNm.jpg', '红楼梦社团成立于2007年，是学校迄今为止唯一一个以一本书为研究对象的社团。本社以传播红楼梦及中国古典文化为宗旨，特色活动有红楼梦舞台剧，原创判词活动等，今年预举办配音比赛，知识竞答等全新形式的活动来丰富同学们的课余生活。我们社团是无门槛进入哒，加群即入社，你可以选择在群里和大家交流红楼知识，也可以选择在入群的基础上加入我们今年新设计的项目群来和我们一起为日后的活动做筹备工作。'),
(55, '精品咖啡协会', 'NJU Specialty Coffee Association', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539266837981-1nNxoPZsp.jpg', '精品咖啡，一开始被翻译为“特种咖啡”，通过其定义可以看出，这个概念只是强调了不同咖啡豆所带有的独特性和典型性。可以看出这并不是一个多么高高在上的概念，在我们看来，它将人们对咖啡的普遍认识从“苦、涩、冲”的单一性中引向了更加多元而有趣的方向——不同的产地，不同的加工方法，再到不同的冲泡和调配方法，任何一个变量都会影响最后呈现于我们杯中的味道，我们也可以通过探索和调整，将其美妙的芳香和口感最化。'),
(56, '摇滚联盟', 'NJU Rock Republic', '音乐', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267065054-hnvCDhY41.jpg', '摇联，全称为南京大学摇滚联盟，成立于2013年。摇联致力于管理与发展南京大学的学生乐队，社团主要由理事部门和下辖的各个乐队组成，除此以外也网罗一批热爱摇滚的社员共同交流。摇联主要的活动以乐队、乐手的形式开展，社团管理并安排精心打理的排练室提供给各个乐队进行日常的排练。摇联承办、协办并且参与学校各大活动演出，从扭泵NU-born音乐节到毕业演唱会等大小活动舞台，都能看到摇联乐队的精彩表演。在社团的框架下，摇联对乐队的管理给与了很大的自由度，乐队的规模组成、使用乐器以及乐队风格都没有严格限制。'),
(57, '模拟联合国协会', 'NJU Model UN Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267118767-tUWUpjD3J.jpg', '南京大学模拟联合国协会成立于2005年4月28日，前身为南京大学外交协会，是经南大团委批准成立的校级专业性社团。我们的活动分为校内校外两个部分。在校内，模联人进行日常参会经验交流和分享，理事会开展学术培训和模拟，分享重大模联会议的讯息，进行模联的周边活动。'),
(58, '弘毅社', 'NJU Hongyi Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267207904-xnRdXi7Y_.jpg', '弘毅社成立于2006年，秉持“以心传心，心心相连”的社训，在公益领域贡献自己的力量。弘毅社取名自“士不可以不弘毅，任重而道远。”在公益之路上，“非弘不能胜其重，非毅无以致其远”。弘毅社是南京大学学工处直接领导的公益社团，南京大学爱心联盟成员之一。'),
(59, '宿舍自主管理委员会', 'NJU Dormitory Self Management Association', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539281532381-GnJW-XP4T.jpg', '南京大学学生宿舍自主管理委员会成立于2002年，隶属于南京大学学工处，是南京大学官方学生组织之一，旨在培养学生自主管理宿舍，共建南大人美好的学习生活家园。我们始终坚持“自主管理，自强不息”的工作宗旨，与南京大学宿舍后勤部门一起，努力创建南京大学安全宿舍、环保宿舍、文明宿舍、和谐宿舍。'),
(60, '新长城自强社', 'NJU Self-improvement Society', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267239728-MdhD3ko07.jpg', '新长城南京大学自强社成立于2011年11月，第一届社员由获得新长城助学金的优秀学生组成。对外，南大自强社与全国其他高校新长城自强社一样，由中国扶贫基金会新长城项目部支持；对内，南大自强社由学校党委学生工作部直接管理。'),
(61, '学生心理协会', 'NJU SPA', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267280038-s5HK_jvJp.jpg', '南京大学心理协会（Student Psychology Association）简称南大心协（SPA），属于学术科技类社团，作为心理学爱好者的交流平台，主要就是针对部内及校内的同学举办各式各样有益于心理健康的活动、并向广大师生普及心理学知识。'),
(62, '电子竞技联盟', 'NJU E-sports Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539278764096-Q5Og8ASSQ.jpg', '作为兴趣类竞技社团，南京大学电子竞技联盟欢迎所有电竞爱好者的加入。电竞社下设英雄联盟、王者荣耀、DOTA2、steam游戏区、炉石传说、星际争霸2、守望先锋、风暴英雄、剑侠情缘三、手游吃鸡、逆水寒等游戏分部，以及为校争光、大佬云集的战队部，项目齐全，人数众多。'),
(63, '天健社', 'NJU Tianjian Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267405571-e8AL5C3cN.jpg', '南大天健社又名南大唐仲英爱心社，成立于2000年九月，今年已经十八岁啦。划重点——我们是历史相当悠久的公益社团哦！！ 社团最初成员为美籍华裔唐仲英先生设立的“唐仲英德育奖学金”获得者，他们有感于唐氏的厚德，取“天行健，君子自强不息”之意，自发成立天健社。'),
(64, '思源社', 'NJU Siyuan Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267575430-cifMTgLzw.jpg', '南京大学思源社，成立于2005年11月，是南大爱心公益社团之一。我们一直秉承着“饮水思源，取之社会，用之社会”的思源精神，积极地从事爱心公益活动。从连续多年坚持举办的回收旧衣物活动的“衣往情深”，到在校园里设置爱心伞，再到与山区的孩子通过书信进行沟通交流的“山外有情”，我们策划并举办过各种各样有意义的公益活动，获得了志愿者们的好评，也取得了一定的成绩。当然，在此基础上，我们更要不忘初心、继续前行，进一步投身爱心公益。'),
(65, '新鸿基社', 'NJU Xin Hongji Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267607099-avk_hO0xc.jpg', '南京大学新鸿基社成立于2008年4月份，是在南京大学学工处领导下的爱心公益性社团。以新鸿基郭氏基金奖助学金为平台，成立南京大学新鸿基社，致力于社会公益活动，秉承中华民族奉献爱心、回报社会、服务群众的优良传统，以“爱心”为本，围绕“爱心”开展活动，以“计其道不计其功，计其德不计其利”为宗旨。力求提高学生们的素质，增强大学生的责任感、使命感，宣扬爱心文化，倡导爱心风气，为广大学生提供一个奉献爱心、完善自我的平台。'),
(66, 'Oh Whale 人声乐团', 'Oh Whale', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539276690289-JQHkRwvKa.jpg', 'Oh Whale人声乐团，成立于2017年夏，注册校级社团于2018年春。作为南京大学首个致力于传播A cappella文化的组织，尽管年轻，却有着勃勃生机——乐团构架逐渐完善，水平稳步提高，校园诗歌节、社团巡礼闭幕晚会、NJU原创音乐会等活动均登台参演，整体上稳步提高发展。'),
(67, '桌游社', 'NJU Board Games Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267629659-0d65wu_V8.jpg', '桌游社是南京大学一个由桌游爱好者组建的社团。社团由一群桌游爱好者组成。现阶段社团主要游戏包括GH（幽暗港湾）、瘟疫危机、MK（魔法骑士）、疯狂诡宅（mom）、死亡寒冬、王冠之心、山屋惊魂、阿瓦隆、行动代号、炼金术士、卡坦岛、三国杀等上百种桌游。'),
(68, '仙语手语社', 'NJU Xianyu Sign Language Association', '语言', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539267673981-6-xtgMVx4.jpg', '南京大学仙语手语社成立于2013年9月，现挂靠于社会学院。“因为看见，所以懂得”，仙语在五年的成长中积极做健听者和听障者的桥梁；推广手语、传递爱心；立足校园，兼顾校外，深入社会。我们本着“学习与传播手语知识与技能”的宗旨，以参与、融合、理解、关怀为理念，用实际行动奉献爱心、呼唤爱心、传播爱心，为我国残疾人事业贡献一份力量。'),
(69, '西班牙语俱乐部', 'NJU Spanish Association', '语言', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539270724578-81FFTy8M9.jpg', '南京大学西语俱乐部成立于……不好意思社长也不知道成立于什么时候，具系里老师称在她03年入学的时候西语社就已经存在了。所以我们是一个至少有着15年历史的老社团了！作为语言主导类的社团，我们社团的活动范围却不局限于语言本身。'),
(70, '播音主持协会', 'NJU Broadcasting and Hosting Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539270765087-g5aaFjamg.jpg', '南京⼤学播音主持协会（NJUBroadcasting and Hosting Association,简称BHA）成⽴于2007年，⾄今已制作优秀网络录播节目时起，成功举办了七届主持⼈大赛，为全校各类⼤⼩活动提供了多位高质量高素质的主持⼈，成为全校各类活动与主持⼈之间的桥梁，也是大⼩活动聘请主持⼈的基地。'),
(71, '腾讯创新俱乐部', 'NJU Tencent Innovation Club', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539270787950-fiOMVGrUO.jpg', '腾讯创新俱乐部是一个集技术创新与趣味娱乐相结合的社团，我们注重培养社员对于技术的兴趣以及创新的思维能力。社团会定期举办内训，为新生们普及一些电脑软件的使用和编程相关知识，如HTML开发，Photoshop的使用等。'),
(72, '羽毛球协会', 'NJU Badminton Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539270832352-64rFJ4eQD.jpg', '南京大学羽毛球协会成立于2000年11月，算算时间，她已经走过了整整十七年，虽不算很长，却足够坎坷与难忘。羽协成立的初衷，不过是一群热爱羽毛球的孩子希望有个属于自己的“家”，希望有更多的人加入这个“家”。而在这十七年的风雨里，我们也从未忘记过这一点。羽协毅然决然地挑起了羽毛球在南大发展的重任，有了面向全校的新生杯与院系杯，然后近两年我们又重新筹办了个人锦标赛，和物业方面多次协商商定网上订场的各类细则；而且每学期，我们都积极的与外校羽协联系，希望能和更多志同道合的人有更多的交流，同时也让更多的人对南大以及对南大羽协有更多的了解，比如北大浙大上交复旦等等，都与我们建立了长期的良好的联系与友谊......'),
(73, '反哺学社', 'Fanbu Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539249875320-mV50WLVOR.jpg', '南京大学反哺学社是南京大学最早开展公益志愿服务的学生社团之一，其名取自“羊有跪乳之恩，鸦有反哺之义”的“反哺”二字。我们以“感恩思源，反哺社会”为理念，创立之初重在号召受助大学生自立自强，并以实际行动回馈社会，后来进一步倡导大学生积极参与公益志愿服务。2007年南京大学首次派遣学生实践团到海南，与海南省团委联合开展旨在号召和组织受助大学生为主体的，以“感恩社会、反哺社会”为主题的“反哺行动”暑期实践活动。活动取得突出成绩，社会反响较大，被包括中央电视台的数十家主流媒体跟踪报道。为了延续南京大学与海南省团委的暑期实践合作，南京大学团委和信息管理学院指导成立南京大学反哺学社（2008年），作为今后与海南省团委及反哺组织对接和开展暑期实践的学生社团组织。'),
(74, '德语俱乐部', 'NJU German Club', '语言', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539270865470-y1uhn_L1P.jpg', '南京大学德语俱乐部成立于2001年，在这17年里德俱一直为对德语学习和日耳曼语言文化感兴趣的同学提供交流的空间。我们是一个面向全校的社团, 无论你有没有德语基础, 我们都欢迎好奇的你。德语俱乐部的活动与德国文化挂钩，必然是精彩纷呈。首先是我们一年一度盛大的圣诞晚会。圣诞晚会通常在外院楼的礼堂进行，各个年级都精心准备了自己的节目，文艺演出之外也会有娱乐性的互动小游戏和抽取礼品的环节，去年的圣诞晚会甚至是由2016级的学长学姐们一手操办，也深得师生们的支持与喜爱。在圣诞颂歌和啤酒甜点中感受德国文化可是给德语俱乐部成员专属的机会哦。'),
(75, '歌声魅影音乐剧社', 'Musical Phantom Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539271398631-bFAIdGDde.jpg', '歌声魅影音乐剧社成立于2005年5月20日，是南京大学的招牌社团之一。在过去的14年里，我们以南京大学为起点，一直在向大众推广音乐剧知识、普及音乐剧作品、推广高校音乐剧以及传播校园音乐剧文化。整个社团围绕着我们所热爱的音乐剧（Musical）这种艺术形式，设置了稳定而又丰富的社团活动。每年，歌声魅影音乐剧社都会演出一部音乐剧作品，我们以高度专业化的排演和精良的制作为保障，推出的作品每年都吸引大量校内外观众观看，广受好评。'),
(76, '微软学生俱乐部', 'Microsoft Student Club', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539271449602-gAw0p1Sub.jpg', '顾名思义，微软学生俱乐部（Microsoft Student Club）就是微软亚洲研究院(Microsoft Research Asia, MSRA)下属的学生俱乐部，由MSRA直接提供资金和运营支持。在全国，包括清华，北大，港科大，南大在内的34所一流高校都有各自的微软俱乐部。俱乐部本着“学习先进技术，开拓创新思维，体验多元文化，成就一流人才”的宗旨，在各高校校团委、相关学院的指导下，通过学生项目、线上微课、产品体验、技术沙龙、学生大赛等活动，培养部员的创新头脑、实践能力和组织能力，让来自不同领域的同学得以展现才华，共同成长。'),
(77, '足球协会', 'NJU Football Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539271609917-ODhvaLCWH.jpg', '南大足协是一个公益性质的社团，致力于推动校园足球的进步与发展。南大足协分为三个部门，活动部、赛事部、宣传部。此外，秘书处与裁判组虽然不属于部门但与足协密不可分。'),
(78, '学生国际组织发展协会', 'NAIO', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539271652322-zDH4xi3X0.jpg', 'NAIO全称是南京大学学生国际组织发展协会（Nanjing University Student Association for International Organizations）, 是由南京大学学生就业中心指导、旨在培养学生对国际组织的兴趣，加深对国际组织的认识、培训推送优秀学生进入国际组织实习任职。在成立仅1年2个月期间，NAIO在就业中心的指导下举办了5次LECTURE、5次TALK、3次VISIT、3次TRAINING，众多南大学子以及留学生参与其中，受益匪浅。'),
(79, '韩语俱乐部', 'NJU Korean Association', '语言', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539271709301-vWriKOtKj.jpg', '南京大学韩语俱乐部依托于我校外国语学院朝鲜（韩国）语系，成立于2007年，是南京大学语言类社团之一。韩语俱乐部秉承促进中韩学生文化交流的理念，致力于为南京大学的广大学生搭建一个良好的韩语学习交流平台，而推动中韩文化的交流。通过学生自建、自办的方式开展丰富多彩的活动，紧跟韩流步伐，为喜爱韩语和对韩国文化感兴趣的同学们提供良好的支持和广大的自由发挥空间。韩俱更是连接南大同学和韩国留学生的纽带，在这里不仅能能亲身体验到韩国文化，更能结交到许多韩国留学生语伴帮助自己学习韩语~'),
(80, 'Brushstroke 画社', 'NJU Brushstroke Association', '美术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280387904-4cYH5n5_5.jpg', 'Brushstroke画社（笔触画社）成立于2016年，是南京大学唯一以绘画艺术为主要内容的校级社团。我们以素描、油画、水粉、水彩、钢笔画为核心元素，兼顾板绘、墙绘、粉笔画、平面设计等多种艺术表达形式。我们有艺术学院杨秀娟老师作为专业指导老师，也有学校的固定美术教室作为我们创作与交流的场所，我们有大量的公共画材可供社员免费使用，我们也会为愿意出售作品的同学提供成熟的渠道。'),
(81, '马克思主义阅读研究会', 'NJU Marxism Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277947244-oGLlQPjDa.jpg', '南京大学马克思主义阅读研究会，简称“南大马研会”，是一个交流学习马克思主义理论、提倡理论结合实践的校内平台。我们关心社会现实，立足基层群众，旨在积累自身的理论知识并运用到广泛的实践之中。马克思青年时就曾说：“世界的哲学化同时也就是哲学的世界化。”我们希望每一位社员都不只做理论上的巨人，更要做现实中的先锋，能够运用马克思主义正确地分析和看待整个世界，不做冷漠的看客。'),
(82, '南京大学博士生俱乐部', 'NJU PhD Club', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539281695809-AM82qR4-h.jpg', '南京大学博士生俱乐部于2018年4月正式成立，挂靠单位为南京大学心理健康教育与研究中心。我们的口号是：“卸下包袱做科研，轻轻松松读博士。”我们致力于搭建一个供博士生交流、交友、减压的平台，科学释放博士生的各种压力，扩大博士生的社交圈，认识更多的杰出博士校友，也能够为博士生提供良好稳定的恋爱渠道，从心理和情感两个方面关爱博士生的发展，更好的为我校博士生的科研服务。'),
(83, '南京大学乒乓球协会', 'NJU Table Tennis Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539276120387-DL_h3M_fm.jpg', '南京大学乒乓球协会，简称“南大乒协”，是代表南京大学组织校内活动的唯一官方组织，我们的主要工作是协调和组织各院系的乒乓球队，为全体南大乒乓球爱好者开展各类乒乓球比赛，给球友们提供一个切磋交手的平台，来更好地推广乒乓球运动，让更多的同学能够体会到乒乓球的乐趣。'),
(84, '信息素养协会', 'NJU Information Literacy Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539278187395-8_Kw6nBHg.jpg', '南京大学信息素养协正式成立于2014年，是类属学术科技社团，旨在帮助学生尊重知识价值，致力于转变高校学生信息观念，提高其信息意识，提升其信息能力，倡导其遵守信息伦理道德的学术性社团。在2017-2018学年被评为南京大学五星社团。协会的宗旨是精耕信息社会，尊重知识价值，提升信息素养，为终身学习导航。  理念： 致力于在互联网时代下普及信息素养教育理念，转变高校学生乃至全民的信息观念，提高其信息意识，提升其信息能力,倡导其遵守信息伦理道德。'),
(85, 'FDT金融工程协会', 'NJU FDT Association', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539277426111-z3daDsAfi.jpg', '相信大家都对我们社团名字里的FDT感到好奇，所谓FDT（Financial Data Technologies）指的就是FDT金融创新工场。FDT金融创新工场是一个旨在发掘、培养、成就全球年轻金融人才的投资孵化平台，以培养新一代全球年轻投资精英为使命，结合Oxford - NIE金融大数据实验室对交易员投资行为的研究成果，帮助年轻人从大学时代开始，免费获得在全球金融市场实践的机会。南京大学FDT金融工程协会是一个非常年轻的社团，也正因为社团的年轻，我们也更愿意接收一切新鲜血液，不管你来自任何专业，只要你同我们一样对金融抱有浓厚的兴趣，我们都希望你能来跟我们一起分享关于金融的想法与智慧，带着热情与灵感，碰撞出思想的火花。'),
(86, '跑步协会', 'NJU Running Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273652408-38beXvajw.jpg', '南京大学跑步协会成立于2013年秋季，由一群热爱跑步、自律坚持的人聚集到一起，凝聚成一个大家庭。跑步协会至今已成功举办了6期百人百天约定跑活动，此外的每个学期，社团还会有丰富多彩的跑步活动。校内像是大大小小的荧光夜跑，彩虹跑，环校夜跑以及与其他社团、院系合作进行的主题跑。校外有如羊山公园长跑活动，组织马拉松爱好者参与南京马拉松等等。除了跑步外，社团还会有如急救讲座等跑步知识宣传。'),
(87, '知行社', 'NJU Zhixing Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273625791-VUAxGiB6n.jpg', '南京大学知行社创建于2008年，是一个关注法律权益的公益实践类社团，曾获校级“十佳社团”荣誉。知行社秉承“先知而后行”的理念，以“入知法律之髓，出行法律之义”为社团的宗旨，以“知行合一”为创立的精神，活动项目富有特色、涵盖面广。近年来，社团活动不断创新形式与内容，与校内外、省内外多个合作方建立紧密联系，影响力进一步扩大。'),
(88, '学生国际交流与合作协会', 'NJU SIECA', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273551726-Xh76IWttz.jpg', 'NJU SIECA (Students International Exchange & Cooperation Association)，又叫南京大学学生国际交流与合作协会，是由南京大学国际合作与交流处指导成立的社团。SIECA社团建立的目的是：1.协助国际处开展外事活动  2.增强校内国际交换生与本地生的交流 3.增加校际学生互访机会。从而提升学生的国际化意识，帮助树立南京大学在国际上的良好形象。'),
(89, '辩论协会', 'NJU Debate Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273490403-8rs6xufQz.jpg', '南京大学辩论协会成立于2005年3月，以弘扬校园辩论文化为宗旨，开展各类辩论赛事及相关活动，被评为“江苏省优秀社团活动”“南京大学十佳社团”等，在华东地区高校和华语辩论圈中享有一定的知名度。2014,、2015年获得南京大学十佳社团第一名，2016年获得第二名，2018年为五星社团。2018年5月，南京大学辩论队又刷新战绩，获得了第八届世界华语辩论锦标赛的冠军，时隔23年南大人再度夺得华语辩论世界冠军。'),
(90, 'BRAVO吉他协会', 'BRAVO Guitar Association', '音乐', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539249118757-17bl-USs1.jpg', 'BRAVO吉他协会，原南京大学吉他协会（成立于1999年），是南京大学历史最悠久的社团之一，每年注册社员超过200人。于2017年获“南京大学十佳社团”称号。在吉协，不管是音乐大佬还是萌新小白，都能找到一片属于自己的天地。我们不仅汇集了南大弹唱、指弹等方面众多优秀的音乐人，也积极开展着与其他高校吉他社团、校外专业音乐团体的合作。同时，我们每个学期也会开设教学班，帮助更多对吉他感兴趣、零基础小伙伴们了解吉他，爱上吉他。'),
(91, '网球协会', 'NJU Tennis Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273457166-8rLKswDBD.jpg', '南京大学网球协会成立于2007年，自成立后一直以服务广大网球爱好者为宗旨，聚集校内优势资源，为南大网球好手和球迷切磋球技互相交流提供了一个很好的平台。网球协会让网球这项运动在南大得以推广，在提升学校乃至市、省的网球竞技水平上做了突出贡献。在网协组织下，南大学子在南京市举行的各类高校网球比赛中积极参与，成绩优异，多次夺得团体冠军、单打冠亚军称号。2013年9月，南京大学网球队夺得第十八届江苏省运动会高校部网球项目普通组男女团体冠军、女单亚军的好成绩。'),
(92, '学生基层工作发展研究协会', 'NGRA', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273374983-l3whEdfvH.jpg', '“南大基层研究会（NGRA）”，全称是【南京大学学生基层工作发展研究会】，2016年6月，在南京大学学生就业指导中心的直接领导下，为贯彻落实国家鼓励毕业生到基层就业的政策，将选调生及基层就业工作做细做实，由南京大学在校学生自发组织成立，旨在服务有志于进入党政机关工作的在校学生和在基层党政机关工作的南大校友，具有研究性质的学生职业发展类社团。'),
(93, '凝眸文学社', 'Ningmou Literature Association', '文学', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273148771-VypjBR2Dg.jpg', '凝眸文学社在南大的文学社团中最具综合性。无论是小说、散文、诗歌还是戏剧，甚至是电影与经历，我们的谈论只因于文学之美在我们心中有所唤起。文学社只提供一个场所，我们的路过展示每人的独特身姿，或辨识出相同的感受。'),
(94, '民间艺术协会', 'NJU Folk Art Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539273075711-SsWcUj4VY.jpg', '南京大学民间艺术协会是为热爱民间艺术的南大学子建立的一个相互学习、相互交流的平台，也是一个保留和传播中华民间艺术的平台。在这里，汇聚了来自各个院系的民间艺术爱好者，我们的日常就是学习研究各种有趣的民间手工艺的制作流程，并分享交流。目前活动内容涵盖剪纸、中国结、画扇、绢花、手工制作簪花等各个方面！'),
(95, '九歌国风音乐社', 'Jiuge Sinology and Music Association', '音乐', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539272928186-ILKtGAwnQ.jpg', '南京大学九歌国风音乐社是一个集合校园内的国风音乐爱好者，提供一个沟通、交流和创作的平台，并致力于扩大国风音乐影响力，学习借鉴传统词曲文化魅力从而创作出优秀的现代通俗国风音乐，活跃校园文化的社团。对于社团名字中的“国风音乐”，我们认为国风音乐包含了传统民乐、古风音乐和融入中国风元素的流行音乐。'),
(96, '长歌行广播剧社', 'NJU Changgexing Radio Drama Association', '演艺', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539276786850-1SIjSWQJT.jpg', '长歌行最初由一群喜爱广播剧与古风的小伙伴创立，社名的长歌行正是出自李白的《长歌行》。考虑到有很多小伙伴对广播剧不是很了解，在正式介绍我们社团前，请先允许我为大家介绍一下广播剧。 广播剧最初是为了适应电台广播而产生的艺术形式，正是因为它放弃了视觉上的呈现手段，为情节展开带来了更大的时空自由。在我看来，如果说电影等是制作者自己的艺术呈现，那么广播剧则是制作者与欣赏者共同创造的艺术。制作者只提供声音，声音之外的一切都由听者自己完善。'),
(97, '南韵汉服社', 'Nanyun Han Clothes Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539276513908-Nu_E7QQOY.jpg', '大家好！我们是南京大学南韵汉服社，简称南韵，字南橘，号橘里橘气社，和九gay国风音乐社、长鸽行广播剧社是有着社会主义兄弟情的世（ji）交（you）。南韵汉服社创立于2013年，是南京大学唯一一个以继承、研究并发扬汉民族传统服饰为载体弘扬传统文化的社团组织，挂靠于历史学院。我社旨在传播汉服着装、传承民族文化、追寻华夏精神。虽然名为“汉服社”，但在穿着、研究、推广汉服之外，我们对于其他传统文化与民俗也有涉猎，如传统节日、刺绣技艺、古典舞等。'),
(98, '南之嘉木茶文化社团', 'Nanzhijia Tea Culture Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274141044-HINNtCeS5.jpg', '“茶”既是传统饮食的重要组成部分，也是古典文学与历史的象征符号，承载着许多地理与人文特征，“茶”作为中华民族的举国之饮，发于神农，闻于鲁周公，兴于唐朝，盛于宋代，普及于明清之际，在现代快节奏的生活中，人们对茶香的热情依然没有削减。南茶社欢迎所有爱茶、爱品茶、爱茶道、爱茶文化的朋友，我们将从传承到修养、从探索到融入，推广与传播茶文化，营造纯正的校园茶文化氛围，也希望更多人能够通过“茶”寻找自己内心的宁静与平和。'),
(99, '木工木艺爱好者协会', 'NJU Wooden Art Association', '美术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539280825370-HQ8Th6zYM.jpg', ' 南京大学木工木艺爱好者协会（木工木艺）是学生自发形成的一个追求爱好和精致生活的组织。我们本意是宣传传统技艺，教授木作的基础知识并且介绍木材种类。把传统的东西留下来，宣传开。在实际运行当中，发现木材原料是一个创作的良好平台，可以把自己的想法应用到上面。而且木作应用可以借助新时代的工具来改变工艺，将传统的东西和新技术结合，是新时代下传统技艺的发展。'),
(100, 'PASSION街舞社', 'PASSION Street Dance Association', '舞蹈', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539249486328-iO8zrT4JR.gif', 'PASSION成立于06年,比起当初成立时,现在是个相对成熟且完整的社团了,我们致力于在校园推广正面的街舞精神,并培育街舞人才；曾多次如围校园十佳社团 , 活跃于各式商演、院系活动之中, 在下学期更是有自己的专场表演-周年庆, 规模属于校级表演, 如果你是一个想要舞台的人,PASSION 会是很好的选择。'),
(101, '紫藤学社', 'Ziteng Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274167815-lpiQ0amjR.jpg', '一九九五年，浦口校区，南京大学历史学系师生秉承先贤宗旨，创办了紫藤学社，而今已二十余载。紫藤学社以南大前辈学者于一九二二年创办的《学衡》杂志为范式，继承其传统，发扬其精神，欲于社会历史中研习学术、探求真理，进而完善自身，以期做有益于社会之人，行有益于社会之事。紫藤学社致力于传播历史文化，并服务于南京大学的广大历史学爱好者。'),
(102, '自行车协会', 'NJU Cycling Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539279176857-ajGXfgjnA.jpg', '简单来说，车协就是一个提供给骑行爱好者的平台。同时，车协是一个十分自由的社团，无论你是驰骋多年的老司机，还是刚入门或者未入门的新手，我们都非常欢迎你加入南大车协~车协里有着许多非常热心的老司机，可以帮你解决问题（ps：我就是被热心的老司机们带入坑的）车协拥有自己的专用车库，方便大家停放爱车，也可以对外租借公用车。车协会给大家提供非常便利的骑行环境和条件。南京是非常适合骑行的城市，而与自行车相伴的大学时光一定是难忘、美好的青春记忆。'),
(103, '美丽中国社', 'TFC x NJU', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274206111-sVaynmzyF.jpg', '南京大学美丽中国社（Teach for China x Nanjing University，简称TFCxNJU）是由热爱公益事业的南京大学学生自发组建、自主管理的，并经由经由“美丽中国（Teach For China）”支教项目批准的非营利公益性学生团体。南京大学美丽中国社的成立旨在以美丽中国项目为依托，开展丰富的校园品牌活动和自办活动。虽然美丽中国社的正式成立时间为2017年，但南京大学美丽中国校园大使团队是存在多年、经验丰富的校园团队，团队曾于于2018年1月获得美丽中国总部授予的“最佳团队”称号。'),
(104, '康平学社', 'NJU Kangping Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539279246102-j7nXQz-1V.jpg', '南京大学康平学社全称为小康社会研究会暨邓小平理论研究中心，是一个学生自行组织和管理的非营利性理论社团。学社秉持用最真实的声音传递最真实的社会现实;用最理性的思维剖析最前沿的社会问题；用最踏实的行动践行最诚挚的社会理想的宗旨，通过开展各项独具特色的、理论和实践相结合的公益活动,进一步激发青年人厚重的历史使命感和社会责任感。'),
(105, '支点学社', 'NJU PHY', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274279510-1YRpV695L.jpg', '支点学社于1999年4月由物理学院一群热爱科学的小伙伴们创立（第一任社长孙建现在已经留学回国，成为物院的年轻教授啦），当时的支点成员作为学生代表接待了来访的两院院士严恺和MIT的郑洪教授，他们两位也对支点寄予了殷切的期望。从那时起，支点一方面专注于编写《支点》杂志，另一方面也举办一些科普或者学术活动。2003年，杨振宁先生访问南大，《支点》杂志受到杨先生的好评，也为支点留下了自己的笔迹。'),
(106, '围棋社', 'NJU Go Chess Association', '传统', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274313359-H1BOyMZsg.jpg', '南京大学围棋社成立于2016年，至今也只走过了两年的时间，处在一个需要吸收新鲜血液不断进步的阶段。南京大学作为国内顶尖、世界一流的高校，也有着江苏最顶尖的一批大学生棋手。我们成立这样一个社团，第一是为校园中热爱围棋的棋手们提供一个沟通交流的平台，充分利用好现有的资源，提升我们的围棋水平；第二就是给予对围棋有兴趣的同学较为系统和专业的指导，来培养和加深他们对于围棋的兴趣和理解'),
(107, '创行Enactus协会', 'Enactus Association', '科技', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274228064-nu0V9-I7K.jpg', 'Enactus，即创行，成立于1975年，是一个由近40个国家超过1700所高校在校大学生和学术界人士以及来自全球550多家企业的商界领袖组成的国际性非营利组织，总部设在美国，为全球三大国际大学生组织之一。2006年，南大Enactus团队成立，至今已有12年的历史。经历了多年的探索与发展，南大创行逐步发展壮大，现已成为拥有近百名成员，运行数个项目、职能部门齐全的成熟社团。自2009年以来，南大创行有连续9年挺进创行世界杯全国赛，在2016年还被评为“创行中国十周年荣誉团队”。'),
(108, '刀笔油画社', 'NJU Pettifoggery Oil Painting Association', '美术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274388226-kPZIG6-Eh.jpg', '南京大学刀笔油画社，成立于2018年3月，是一个刚刚加入南大社联的年轻社团，由一群热爱绘画、热爱艺术的伙伴们所创立。社团建立的初衷是给予兴趣爱好者灵感碰撞的平台，增进校园艺术化氛围，随着其他爱好绘画同学的加入，逐渐演变成供刀画爱好者交流与学习的平台。'),
(109, '旅行协会', 'NJU Travel Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274558697-nfAEUfmRD.jpg', '南大旅协是南京大学唯一户外旅行类社团。无论你喜欢独自前行还是结伴出游，是愿意亲近山水或想体会文化，南大旅协都愿意成为你的伙伴。鼋头渚的樱花下，乌镇的青砖旁，古道的石阶上，都有我们的身影。台城上，紫金山顶，竹海边，是我们的脚步。作为南大唯一的户外旅行社团，自从成立以来已经有十余年的历史了。每一代旅协人的付出，期望将更好的旅行经历奉献给热爱旅行的我们'),
(110, '青年学习社', 'NJU Learning Of Youth Association', '学术', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539278413134-JjIoL4OkE.jpg', '南京大学习近平新时代中国特色社会主义思想青年学习社是全国首家习近平新时代中国特色社会主义思想相关社团，同时也是全国首家理论学习型社团，青年学习社以“学懂、弄通、做实”为逻辑层次，坚持开展侧重朋辈带动的导学、讲学、研学、比学、践学、督学。青年学习社自2017年成立以来，受到了中宣部、江苏省委、团中央多位领导同志的肯定，被南京日报等多家媒体报道。南京大学习近平新时代中国特色社会主义思想青年学习社主要围绕理论学习、实践调研、文体宣讲三个方面开展工作。'),
(111, '定向越野协会', 'NJU Orienteering Association', '体育', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274587639-rgk4nd4S5.jpg', '定向越野运动作为一种新兴的运动，起源于北欧。简单来说，就是运动员利用地图和指北针到访地图上所指示的各个点标，以最短时间到达所有点标者为胜。看不懂地图？不会用指北针？小可爱们完全不用担心哦~实际上入门的知识并不多也不难学，聪明的你们一定没有问题的，更何况还有社团内的小哥哥小姐姐们手把手传授经验。从来没有接触过得同学只要体验过1、2次也能很快上手哦~'),
(112, '优爱公益协会', 'NJU Your Eye Association', '公益', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274654104-X54liHp78.jpg', '爱公益协会成立于2010年，曾连续三年被评为十佳社团。作为公益社团，优爱聚集了一群真心做公益、真诚献爱心的极具责任感的南大学子。社团始终秉承实效公益、高效公益、长效公益的公益理念，做优质高效的公益。社团运营至今，在一届届的社员与志愿者的努力下，我们已拥有凤凰托养助残、颐鹤老年公寓、青岛路老年大学、蒲公英支教等稳定的长期公益活动。'),
(113, '科幻奇幻协会', 'NJU Science Fiction Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274696551-zJ8Gol7fD.jpg', '南京大学科幻爱好者协会成立于2007年，2017年更名为科幻奇幻协会（科幻奇幻一家亲嘛~）。这里汇聚了南大的科幻奇幻粉丝，不管是多么小众的作品都能找到同好，魔戒、星球大战、星际迷航、哈利波特、基地系列、三体等经典名作自不用说，还有神秘博士等英剧美剧、三巨头代表的老派科幻，克苏鲁神话之类的神秘力量、银河英雄传说等日本科幻……'),
(114, 'DIY俱乐部', 'NJU DIY Association', '文娱', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1539274772424-Pc1GtElIa.jpg', 'DIY俱乐部是为热爱手工的同学打造的平台，我们社团成立于2006年，至今已经是第十二个年头了。DIY的全称是Do It Yourself，因此我们旨在组织大家通过自己动手创造美丽、获得乐趣。本社强调创意和亲手制作，注重自由、兴趣和心意。');

-- --------------------------------------------------------

--
-- 表的结构 `association_audit`
--

CREATE TABLE `association_audit` (
  `id` int(32) NOT NULL,
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_english` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association_audit`
--

INSERT INTO `association_audit` (`id`, `open_id`, `name`, `name_english`, `category`, `image_src`, `intro`) VALUES
(1, 'o4chG412hg0qJLpdXyTNOAW4G3mk', '南大社团小助手', 'Nanjing University Association Helper', '其他', 'https://qcloudtest-1257671959.cos.ap-guangzhou.myqcloud.com/1538645773043-vEdK2-3Ds.jpg', '我是南大社团小助手，会发布一些重要公告哦~');

-- --------------------------------------------------------

--
-- 表的结构 `association_joiner`
--

CREATE TABLE `association_joiner` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association_joiner`
--

INSERT INTO `association_joiner` (`open_id`, `association_id`) VALUES
('o4chG4-XFyB3rTIVY3Jbg9D0tD-w', '1'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '100'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '22'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '30'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '35'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '5'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '78'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '90'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', '97'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', '16'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', '5'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', '68'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', '79'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', '86'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', '97'),
('o4chG42odjSl5OlfHb-bYi7fs1FQ', '5'),
('o4chG42YnTIfb9fQYQ5LidjXS76Y', '1'),
('o4chG44fktgR6qaRsWixZUwd7w8o', '1'),
('o4chG45SA-VpqSX-RnqhYVr8HgvE', '1'),
('o4chG47aQdNg2faqFUCaSrw9W4IE', '5'),
('o4chG47J1LSxCLHzFFeYzZgcTkQY', '1'),
('o4chG483hEzc_RNXX5jTD-czo5XA', '21'),
('o4chG48kbW1vntAX45ehwYWL6HxU', '5'),
('o4chG4y4Y-9nrMC5YKpUL_O-H0QA', '15'),
('o4chG4y4Y-9nrMC5YKpUL_O-H0QA', '5'),
('o4chG4y4Y-9nrMC5YKpUL_O-H0QA', '61'),
('undefined', '100'),
('undefined', '4');

-- --------------------------------------------------------

--
-- 表的结构 `association_manager`
--

CREATE TABLE `association_manager` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'o4chG412hg0qJLpdXyTNOAW4G3mk',
  `association_id` int(32) NOT NULL,
  `identity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chief'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association_manager`
--

INSERT INTO `association_manager` (`open_id`, `association_id`, `identity`) VALUES
('o4chG40kKyB48WMSs0O8rtC02f1c', 1, 'normal'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 1, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 2, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 3, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 4, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 5, 'normal'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 6, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 7, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 8, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 9, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 10, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 11, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 12, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 13, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 14, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 15, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 16, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 17, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 18, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 19, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 20, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 21, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 22, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 23, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 24, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 25, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 26, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 27, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 28, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 29, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 30, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 31, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 32, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 33, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 34, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 35, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 36, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 37, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 38, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 39, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 40, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 41, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 42, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 43, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 44, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 45, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 46, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 47, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 48, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 49, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 50, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 51, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 52, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 53, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 54, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 55, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 56, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 57, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 58, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 59, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 60, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 61, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 62, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 63, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 64, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 65, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 66, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 67, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 68, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 69, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 70, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 71, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 72, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 73, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 74, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 75, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 76, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 77, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 78, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 79, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 80, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 81, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 82, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 83, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 84, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 85, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 86, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 87, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 88, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 89, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 90, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 91, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 92, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 93, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 94, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 95, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 96, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 97, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 98, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 99, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 100, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 101, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 102, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 103, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 104, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 105, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 106, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 107, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 108, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 109, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 110, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 111, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 112, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 113, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 114, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 115, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 116, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 117, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 118, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 119, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 120, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 121, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 122, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 123, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 124, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 125, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 126, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 127, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 128, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 129, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 130, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 131, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 132, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 133, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 134, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 135, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 136, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 137, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 138, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 139, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 140, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 141, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 142, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 143, 'chief'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 144, 'chief'),
('o4chG42odjSl5OlfHb-bYi7fs1FQ', 5, 'chief');

-- --------------------------------------------------------

--
-- 表的结构 `association_official`
--

CREATE TABLE `association_official` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `official` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association_official`
--

INSERT INTO `association_official` (`id`, `official`) VALUES
('1', '南大社团小助手'),
('10', 'NJU长风'),
('100', 'nju_passion'),
('101', 'njuziteng'),
('102', 'njucyclingclub'),
('103', 'njutfc'),
('105', 'NJUPHY'),
('106', '南大不会下围棋社'),
('107', '南大Enactus'),
('108', '南大刀画社团'),
('109', '南大旅协'),
('11', 'njulatin'),
('111', 'nju定向越野'),
('112', 'njuyoureye'),
('113', '南京大学科幻爱好者协会'),
('114', '南大DIY社'),
('12', 'njugxs '),
('14', '南大永遇乐'),
('15', '南大口述历史'),
('17', 'AIESEC南大'),
('18', '南大武协'),
('19', '南大人工智能社团'),
('2', '南京大学林泉钢琴社'),
('20', 'filmsalon0206'),
('21', '南大古琴社'),
('22', 'magicnju'),
('24', '半人间'),
('25', '南大中医社小助手'),
('26', 'AIRX'),
('27', 'njukd'),
('28', 'nju-itxia'),
('29', '南大演讲与口才俱乐部'),
('3', 'NJU传灯'),
('30', '集庆会馆'),
('31', '南大flappy轮滑社'),
('32', 'njuxlscda'),
('33', '灯下漫谈'),
('34', 'dearjushe'),
('35', 'NJUMaker'),
('36', 'njuboxing'),
('37', 'NJU赣协'),
('38', 'Protege留学互助联盟'),
('39', '智能数据决策工作室'),
('4', '南大台协'),
('40', '南大射艺'),
('41', 'NJUgongji'),
('42', '墨染知恬'),
('43', 'changtingshengg'),
('44', 'NJU独立制片社'),
('45', 'GAFA'),
('47', '南京大学英语俱乐部'),
('48', '重唱诗社'),
('49', '南大SRTP'),
('5', '南大宠物之家'),
('50', 'NJU爬爬屋'),
('51', '南大社调'),
('52', 'NJUkarate'),
('53', '南大CAC动漫社'),
('54', 'nju红楼社'),
('55', 'NJU_specialtycoffee'),
('56', '南大RockR摇滚联盟'),
('57', '南大模联'),
('58', 'NJU弘毅社'),
('6', '南大FIRE嘻哈音协'),
('60', 'NJU自强'),
('61', '南大心协'),
('62', 'NJU电竞圈'),
('63', '南大天健社TJ'),
('64', 'NJU思源社'),
('65', 'NJU新鸿基'),
('66', 'OhWhale人声乐团'),
('67', '南大桌游爱好者'),
('68', '南微语'),
('69', 'nju-spanish'),
('7', '南大排协'),
('70', '南主播'),
('71', '南大TIC'),
('72', 'nju_badminton'),
('73', '艾反哺'),
('74', 'njudeutschclub'),
('75', 'musicalphantom'),
('76', 'NJUMSTC'),
('77', 'NJU-FA'),
('78', 'NAIO南大国际组织'),
('79', 'NJUKOREAN'),
('8', '南大环协'),
('80', 'Brushstroke画社'),
('81', '南大马研会'),
('82', '博士生俱乐部NJU'),
('83', '南大乒协'),
('84', 'NJUILA'),
('85', '南大FDT金融创新俱乐部'),
('86', 'NJU跑协'),
('87', 'NJU知行'),
('88', 'NJUSIECA'),
('89', '南大辩论'),
('9', '林下诗社'),
('90', 'njubravo'),
('91', 'NJUTennis'),
('92', '南大基层研究会'),
('93', 'ningmouwxs'),
('94', '南大民艺'),
('95', '九歌国风音乐社'),
('95', '南大九歌国风音乐社'),
('96', '南大长歌行'),
('97', '南韵汉服 '),
('98', 'NJU南有嘉木');

-- --------------------------------------------------------

--
-- 表的结构 `association_qq`
--

CREATE TABLE `association_qq` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association_qq`
--

INSERT INTO `association_qq` (`id`, `qq`) VALUES
('1', '875172749 (管理员qq号)'),
('10', '823039094'),
('100', '652858304'),
('101', '830524343'),
('102', '368378454'),
('103', '523345798'),
('104', '660493067'),
('105', '815765280'),
('106', '346590781'),
('107', '829229731'),
('108', '829208801'),
('109', '828861729'),
('11', '794795902'),
('111', '828262815'),
('112', '562846563'),
('113', '825075391'),
('114', '824070202'),
('12', '100465561'),
('13', '81795097'),
('14', '782666500'),
('15', '518498352'),
('16', '432138852'),
('17', '830975062'),
('18', '464481404'),
('19', '795387955'),
('2', '524136954'),
('21', '822874926'),
('22', '720919768'),
('23', '822242535'),
('24', '65120061'),
('25', '671662980 '),
('26', '828956697'),
('27', '809963367'),
('28', '660268056'),
('3', '831366314'),
('30', '658904380'),
('31', '742285721'),
('32', '799436936'),
('33', '830940239'),
('34', '23415239'),
('35', '734989844'),
('36', '828350296'),
('37', '830670931'),
('38', '830024379'),
('39', '833549392'),
('4', '831403465'),
('40', '732858466'),
('41', '827673816'),
('42', '159615184'),
('43', '564797067'),
('44', '624020916'),
('45', '829905530'),
('46', '629032993'),
('47', '831150975'),
('48', '121125264'),
('49', '545293778'),
('5', '279559147'),
('50', '738136544'),
('51', '824552467'),
('52', '825870347'),
('53', '819294977'),
('54', '65856363553'),
('55', '565121379'),
('56', '331332734'),
('57', '823861112'),
('58', '34517633'),
('6', '681916809'),
('60', '823414921'),
('62', '822571640'),
('63', '821682949'),
('64', '829659444'),
('65', '830017735'),
('66', '831410154'),
('67', '170537183'),
('68', '708070938'),
('69', '170724685'),
('7', '570814101'),
('70', '827432615'),
('71', '347955018'),
('72', '830314070'),
('73', '823340067'),
('74', '534672317'),
('75', '799670608'),
('76', '527635833'),
('77', '824793011'),
('78', '466519731'),
('79', '102913098'),
('8', '827608510'),
('85', '662364526'),
('86', '488470568'),
('87', '688798194'),
('88', '805690820'),
('89', '826025262'),
('9', '640363088'),
('90', '809474730'),
('91', '825207862'),
('92', '183531897'),
('93', '464632263'),
('94', '650846369'),
('96', '131569760'),
('97', '75766709'),
('98', '799748510');

-- --------------------------------------------------------

--
-- 表的结构 `association_video`
--

CREATE TABLE `association_video` (
  `association_id` int(32) NOT NULL,
  `vid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `association_video`
--

INSERT INTO `association_video` (`association_id`, `vid`) VALUES
(1, 'g0727h4wnwe'),
(2, ''),
(5, 'd0301b3wia1'),
(6, 'r0506e5x2ns'),
(7, 't0395yrzecz'),
(8, 'x0326tyrka1'),
(9, 'k0195vj1fpq'),
(10, 'k0317frv9xz'),
(11, 'r063542jciu'),
(14, 'd0709lqzu9w'),
(15, 'p0677xlgeb2'),
(17, 'c0317eitq04'),
(18, 'y0192e92idx'),
(22, 'a0647p75qey'),
(27, 'g03574ozct3'),
(30, 'd0682ip7zuv'),
(31, ''),
(37, 'h0370o1facs'),
(52, 'j0322ipr4po'),
(60, 'w0500upever'),
(64, 'l0307ifntju'),
(65, 'o0324idqoyh'),
(68, 'o0552pk3j4o'),
(78, 'd0709i6pqg8'),
(90, 'b0687wqrztp'),
(97, 'p07021f49zq'),
(100, 'x0701l397l8'),
(107, 'j0624oza9sl'),
(111, 'n0330dp0eyf'),
(112, 'a0351yrs2l2');

-- --------------------------------------------------------

--
-- 表的结构 `cAppinfo`
--

CREATE TABLE `cAppinfo` (
  `appid` char(36) DEFAULT NULL,
  `secret` char(64) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL,
  `login_duration` int(11) DEFAULT NULL,
  `qcloud_appid` char(64) DEFAULT NULL,
  `session_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `cAppinfo`
--

INSERT INTO `cAppinfo` (`appid`, `secret`, `ip`, `login_duration`, `qcloud_appid`, `session_duration`) VALUES
('wx19adb38a02715a7c', '', '134.175.122.23', 1000, '1257671959', 2000),
('wx19adb38a02715a7c', '', '119.29.152.131', 1000, '1257671959', 2000),
('wx19adb38a02715a7c', '', '119.29.152.131', 1000, '1257671959', 2000);

-- --------------------------------------------------------

--
-- 表的结构 `cSessionInfo`
--

CREATE TABLE `cSessionInfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';

--
-- 转存表中的数据 `cSessionInfo`
--

INSERT INTO `cSessionInfo` (`open_id`, `uuid`, `skey`, `create_time`, `last_visit_time`, `session_key`, `user_info`) VALUES
('o4chG4_WOUaC6bQcoHhHOiJbNgPs', 'd41445eb-d3a0-4f95-b447-34b554c6cd32', '4b076f01cf333262bfb5e1f9bb962a2ebac4f859', '2018-10-05 08:17:29', '2018-10-12 02:31:51', 'g6so+zczAqRHgVzwIq/p4g==', '{\"openId\":\"o4chG4_WOUaC6bQcoHhHOiJbNgPs\",\"nickName\":\"盛丹丹\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Taizhou\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKWmyUG3MkgzFmhqTr5IicicVOXE7YvJgUtUuh1Wc21OobeJot5FucyMM5hXebYmiaGlxrFfkth3IsiaQ/132\",\"watermark\":{\"timestamp\":1538883844,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4-LCQmk1VPVfa85Mq6bzH6k', '93dfdcc0-ef41-4853-a3e6-d0792f6f4fa6', '02f2684acddfc78de353aacf30ab2afb6ca49f4d', '2018-10-11 14:44:59', '2018-10-11 14:44:59', 'EYOLpVcUPdWMAI5FDcn3xg==', '{\"openId\":\"o4chG4-LCQmk1VPVfa85Mq6bzH6k\",\"nickName\":\"嘻嘻嘻嘻\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/kO2vevqvHiaial5rSWfHwEUBqxSy2lDnROOhf51h2nIrRWNdvibsC9DGBPmq6lgLLlvtrRSrENor1nN2pGLYRbORA/132\",\"watermark\":{\"timestamp\":1539269096,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4-XFyB3rTIVY3Jbg9D0tD-w', '89620ec2-7bf7-496f-824a-c0247d52e5a7', '05b1e28bdc8b83bf2cba49ad6ba128088fbf8576', '2018-10-11 09:39:14', '2018-10-11 09:53:10', 'gD2l1NMLhmq1B8CjhPhAlw==', '{\"openId\":\"o4chG4-XFyB3rTIVY3Jbg9D0tD-w\",\"nickName\":\"关胜\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIRe6dnOKZdO6UiamcCqe3C8lvPUBEXDaRdYVtwBfKGzByfvfMUuO9gRvYc2ctS7icsxn1D1NrjVic0Q/132\",\"watermark\":{\"timestamp\":1539250752,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG40jNOxGYwgR8TyH4_VXs4L0', '2fbc86c3-0762-4727-8029-07e808f5cb67', '03fb62d1db21fb870eff724f438bf507ad1f0430', '2018-10-11 03:23:07', '2018-10-11 03:23:21', 'UM92P/qvv83vNjAVdW6GEA==', '{\"openId\":\"o4chG40jNOxGYwgR8TyH4_VXs4L0\",\"nickName\":\"陈ⅱ\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Zhanjiang\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKSs9qyDic4hvNNufeqkI3HbwqyYU7n2sCfia6gibDEvRZzPickcRDjhtUdAtQy3CvgQfElZBGeicl1YCQ/132\",\"watermark\":{\"timestamp\":1539228185,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG40kKyB48WMSs0O8rtC02f1c', '1e7beaa6-aeed-4281-9c22-eca3117cd246', '09e174f99ff4fb274509eb142b758dffa4ca5443', '2018-10-05 08:09:22', '2018-10-11 16:21:38', 'HfHd2D+G6PufxOt9T0yq7A==', '{\"openId\":\"o4chG40kKyB48WMSs0O8rtC02f1c\",\"nickName\":\"江君\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/zIacicM0F3hbcMQZhJuM8KvGq8fO2ticDg9dib8icrxel4Uqo4pVQBib5A4CH7a2VCIVSH5KnkJWeGJXqmW3hs9CXuw/132\",\"watermark\":{\"timestamp\":1538726961,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG412hg0qJLpdXyTNOAW4G3mk', 'de32a862-26f3-42a5-a2a7-97a82e898bb8', '4afc752f3d7624cb83cc0703f31344967d2c308a', '2018-10-04 09:03:30', '2018-10-12 12:26:39', 'g3t24PtnRgLdUOH+HDj6UQ==', '{\"openId\":\"o4chG412hg0qJLpdXyTNOAW4G3mk\",\"nickName\":\"顾先生\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Taizhou\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/JozjlOFAvicDeE9ryw46TPxtdAhicsyWor5QKicRBF4TXT0HgwR6fSmYNcpqEQCToKR7YIqg7vugkWsQBbntXV2BA/132\",\"watermark\":{\"timestamp\":1538644873,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG41Tlx0QUG6bQqf9yVhez1eQ', 'd5b27e15-e058-4d7f-b89e-4d4c3db89e9e', '9a18cfc94ac296ccc3cc31f18ecdac5d70bb929c', '2018-10-11 15:40:41', '2018-10-12 02:03:43', 'QEqKHe9UeV3GThIwheQk0Q==', '{\"openId\":\"o4chG41Tlx0QUG6bQqf9yVhez1eQ\",\"nickName\":\"许子清\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"White Mountains\",\"province\":\"Jilin\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq8qGflBcv6uicflX44xegkpQpwbgdJ1zAlQn55ycia6maiay34p5vGDvs8IpGqdLH2AuMicOnHE69Dag/132\",\"watermark\":{\"timestamp\":1539272444,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG41YirUQwLkhEwOV3_fhxArc', '5da02cef-f4c4-4bb5-9a7d-102d020c06af', '65eb9d9affe8c0e185dfc84e83fc5ced1967b5fc', '2018-10-11 15:07:22', '2018-10-11 15:07:22', 'LSogjgAsaY8Not9zJqi9zQ==', '{\"openId\":\"o4chG41YirUQwLkhEwOV3_fhxArc\",\"nickName\":\"story\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/FtEq6o6ibAvWaWTiaYdFraSkol1I88ZZgIutpbicicIuq9fVHy2qmlzqcenuV2RZOKxicEBBiaNrM4ib8TTuibHH6vaOibw/132\",\"watermark\":{\"timestamp\":1539270440,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG425O5BNE_rCD4LAp2KOo3pU', 'f7eceb63-5800-4d4e-8562-ba1b48e6d04a', 'f41c0898c7982e0d95f30d18439df531052c9408', '2018-10-05 09:25:35', '2018-10-05 09:25:35', 'ul7oYg0K644WBq/5u7wl8w==', '{\"openId\":\"o4chG425O5BNE_rCD4LAp2KOo3pU\",\"nickName\":\"^Deniece Zhang~\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Minhang\",\"province\":\"Shanghai\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ3b2gV5SXLmKcRTTOIs86yQ19xm7zRg3TfJ3bIXBDYG2WzZSIOkib3oXhYVFc6XV65PicXB55YMC0Q/132\",\"watermark\":{\"timestamp\":1538731532,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG428qtrYTZmdU_UuVD-24mak', '5837e2b9-f2fe-4e40-85d8-79c14fd3ba47', '1a53b0137307003c6272fab3e6a70da2b41f3ad2', '2018-10-04 10:07:45', '2018-10-04 10:07:45', 'VI2se6WyOSSDXGqCcBpayw==', '{\"openId\":\"o4chG428qtrYTZmdU_UuVD-24mak\",\"nickName\":\"林冲\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLwjBteJDrpltH3EZ0qK1Qd9kHclrBsa7K5KmQhb5dRjxYQ1H5X7V37F7cZN63HbPWT3eMbVGCqnA/132\",\"watermark\":{\"timestamp\":1538647663,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG42gIqQe64HlF1wllbuEHedw', '2ee34627-c8ab-444d-8cc5-2d61f60f9a14', 'cf4671d75706e14cb4906c467c2be33c1895ddd9', '2018-10-08 10:14:23', '2018-10-12 03:30:44', '/qKrmANm92TpbQlCWwtOag==', '{\"openId\":\"o4chG42gIqQe64HlF1wllbuEHedw\",\"nickName\":\"顾晴秋\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Taizhou\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLuGtrX9yZGdt551oct5WYhEnxGSTDxk6ic8k4Qva5vc9oBcYQT4v0tcrx12uVhsibLqWHicckic5rR8w/132\",\"watermark\":{\"timestamp\":1538993662,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG42HaqC3Btn-LjuSdxgtj-bI', 'e3136cc2-7a89-4800-a22f-b5d38e9be747', 'd848e8e6414ea683e2959167a49ceb282c4fb940', '2018-10-11 15:37:52', '2018-10-11 15:37:52', 'nn6gRp918jKvJBqcBZu6dA==', '{\"openId\":\"o4chG42HaqC3Btn-LjuSdxgtj-bI\",\"nickName\":\"饼了吧嚓\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"Iceland\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/9CT7mcTVh4ef9QnGouvUYPpjdBJZF22r4qQCEkzibxfEW43pcO6YjAc2FcPNT1ffzb0MzehXu14GPMwGDAdT8ug/132\",\"watermark\":{\"timestamp\":1539272270,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG42odjSl5OlfHb-bYi7fs1FQ', '2638dafc-57d5-4ac6-a8f2-0ea1ab654c4a', 'ca54b9a0862ea4a889e31b5444852e8ea7a02c67', '2018-10-11 15:13:38', '2018-10-11 15:13:38', 'tD9Aa8MBvgNqcakJB2MWFQ==', '{\"openId\":\"o4chG42odjSl5OlfHb-bYi7fs1FQ\",\"nickName\":\"剪水秋瞳\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqicvJHZvFUQJRX5IgxbE8RjuVoeKk370nfiaqbIzchweZ8ZmiaEicGSyn68NsYJXRO1QlsNPMsW1haicA/132\",\"watermark\":{\"timestamp\":1539270816,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG42tAOqCH3q4t7PxkQT2nFo0', 'bff42f75-0969-497e-92cc-ec6dc30b3f18', '9d214a73ab4c496d048153669d4064064171e457', '2018-10-05 08:01:17', '2018-10-05 08:01:17', 'weNDLJeE4XghTVR+3oAHNQ==', '{\"openId\":\"o4chG42tAOqCH3q4t7PxkQT2nFo0\",\"nickName\":\"rdgztest_92072\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmUyz5Zu8Yz8AD3WB7gdgqtcET5Cm4QP4LBJY4icGyMfp9f0XUvrJ8KOA0gLicMRooBfztwagtUib2A/132\",\"watermark\":{\"timestamp\":1538726474,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG42YnTIfb9fQYQ5LidjXS76Y', '3ebe1772-05df-4a47-ba17-e2f6026155e0', 'b8c4b7ce4626fddcf1dd75479ad4700cd3193176', '2018-10-06 17:34:50', '2018-10-09 14:02:10', 'SiX8+4nobOjlYKXDDDPmSw==', '{\"openId\":\"o4chG42YnTIfb9fQYQ5LidjXS76Y\",\"nickName\":\"花荣\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLyUyMevGRHm25yOQmrRUmcNnqXEVR5CzvNwZibd5NhVxYVXpPz3oukgzNfKK4VYZGHcl9ygXJcbgA/132\",\"watermark\":{\"timestamp\":1539093660,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG44fktgR6qaRsWixZUwd7w8o', 'bf747e98-dc13-4151-840a-4738c2b89ef1', 'e08d7207a5fd6915f4cc591b10007be5124fdfd7', '2018-10-11 09:49:20', '2018-10-11 09:59:52', '7QpgIAWTuAIa6jaLOlphHQ==', '{\"openId\":\"o4chG44fktgR6qaRsWixZUwd7w8o\",\"nickName\":\"呼延灼\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJE6vGmmtDYvj31QibXo43PL3pbpuia82ssfUZlTXcw3gsUObzqWUIC8MZTdoibStw0KtJcoYjgqLDxw/132\",\"watermark\":{\"timestamp\":1539251358,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG458cMzs8Qv8erxJud6ykcEE', 'f9c208fc-3db8-41e6-ae3c-26bb4ce1ff21', '640421299519295fef486b2ea98a5652885fb7ab', '2018-10-11 15:33:21', '2018-10-11 15:33:21', '7xFyFebWUYPLsb4UC5LFJg==', '{\"openId\":\"o4chG458cMzs8Qv8erxJud6ykcEE\",\"nickName\":\"风起天阑\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/nNsjib1t2Sib52pLKrGsP7CX4yulJevqh33HicBbiahN6CpLn0DcLJg2iaxMYjIso6C1Uzua5Raz14ko3Etm1ExZlHg/132\",\"watermark\":{\"timestamp\":1539271996,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG45BvNJFVdKgQMNZp_2H5UeE', 'af961acc-e5ca-448c-bd3d-73f8df1d7512', '04663a3426c2fa689926ea4bf181747d91c61dc4', '2018-10-11 18:48:43', '2018-10-11 18:48:43', '9oHgXYqlLXEfz9t+LaKkHg==', '{\"openId\":\"o4chG45BvNJFVdKgQMNZp_2H5UeE\",\"nickName\":\"林沁青\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Nanjing\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKpDwCVIo7ah6URPRtY9y2cnnVTsEcAP5sgbaiavXveibp8I2LonDc8dDohicNlpx9fseolKpVnH7vfg/132\",\"watermark\":{\"timestamp\":1539283721,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG45SA-VpqSX-RnqhYVr8HgvE', '0b3139f1-d642-4161-b873-f89152f3e799', '80095d362dde63efb7413c20774808c4dd8cc54f', '2018-10-10 03:04:53', '2018-10-10 03:04:53', 'y7rx0//eTUd9tak75M1NBQ==', '{\"openId\":\"o4chG45SA-VpqSX-RnqhYVr8HgvE\",\"nickName\":\"小纯洁从你的全世界路过\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Nanjing\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/VaUeYoic10qcAVJHiaCSTkUYWSbwibZQhhP6vm9icCwIYVHpD00WTVq3eVLdYmDynmWicXOLWSPEROHOlTTibucJSoxg/132\",\"watermark\":{\"timestamp\":1539140691,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG47aQdNg2faqFUCaSrw9W4IE', 'a8f50c46-b7a0-4b5b-bf03-76ae42b597d6', 'b3be1c19c87bffa3f91d0072ed58dfba2ca19135', '2018-10-11 15:08:35', '2018-10-11 15:08:35', 'MsU+D5I9C7B+ZquBfqROcA==', '{\"openId\":\"o4chG47aQdNg2faqFUCaSrw9W4IE\",\"nickName\":\"小聪明代斯哇\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Qingdao\",\"province\":\"Shandong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLtJRoQy3mOwOpjuqdGM2Dtv6JRapvsKDGfbABgYQLbjT3BNQn0cvrEhqicftxwheedfeDO3xF3HEA/132\",\"watermark\":{\"timestamp\":1539270512,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG47J1LSxCLHzFFeYzZgcTkQY', '51dd5cff-82ef-4bb1-a022-fe5fdb453203', 'c9369323935b07f762891680de1233b537780bac', '2018-10-05 06:44:49', '2018-10-12 03:38:35', 'Q97RLwh0V1xap8liAwR0UQ==', '{\"openId\":\"o4chG47J1LSxCLHzFFeYzZgcTkQY\",\"nickName\":\"谢歪\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Dongguan\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/mbUZQ64M7pK2ys6iauVd6xTMSBiaGGgrGMpCGcJhGRaCfXcDMlAY8RLJzKrvcrsmDcp36xica5QSfCjZgY3dpHhsQ/132\",\"watermark\":{\"timestamp\":1538721887,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG47n2bLxicV8UJPw_YAsp2rE', 'b806e79a-f8cd-4c12-ac06-ff3ff9bf1a53', '101eb9229c323a2121acef01e542fb26eb08b94c', '2018-10-11 15:17:43', '2018-10-11 15:17:43', '+KVp0UFBMjF8G9pEcICs+w==', '{\"openId\":\"o4chG47n2bLxicV8UJPw_YAsp2rE\",\"nickName\":\"云\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"Egypt\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLibIkxrMplvws8icV4mV1Ljl9lMquiahtt8wxcYuTzqhkicCU1aYKucudULrVxhTdKoice0wtwfS81rWg/132\",\"watermark\":{\"timestamp\":1539271061,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG483hEzc_RNXX5jTD-czo5XA', 'c9110137-24da-4379-8951-2d909c7e05f2', 'f4d1d0803072fb09ccb7456d01a2f8274ff89eba', '2018-10-12 01:31:50', '2018-10-12 01:31:50', '/0ihZmpsX90KoqWYYw4jRA==', '{\"openId\":\"o4chG483hEzc_RNXX5jTD-czo5XA\",\"nickName\":\"纳墨\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Nanjing\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/FoE5JTn2hmicr5bnNRtyqD1SicSW3yG3ZaEELliazjdHicG6eGl0xyMSuUZIEuBXRPmoq88d8TpqicWdOicEzlNlHibAA/132\",\"watermark\":{\"timestamp\":1539307908,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG48kbW1vntAX45ehwYWL6HxU', '241f0bde-eb8b-4276-b4c1-2b1d667031ca', 'ca647bdd323cd30c3a68d1bd3abb6087cb5c2a10', '2018-10-12 00:51:51', '2018-10-12 00:51:51', '0y7khZ84oFC0TMx8t/V0ZQ==', '{\"openId\":\"o4chG48kbW1vntAX45ehwYWL6HxU\",\"nickName\":\"Liu曼\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Toronto\",\"province\":\"Ontario\",\"country\":\"CA\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/MffE8OER44JJzM0Wicpdu8qIhgVN5SRVlOjABGRcrswfOjNJ1aaM6qoTDS30MH6mITPRUBGbguV5r1cgkia8KiblQ/132\",\"watermark\":{\"timestamp\":1539305509,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4wrJbFtTOGsZ6PmA3scmrkM', '87c0cc31-750b-455f-8b28-80264640d358', '612634edf7dd40e2b76885ddf6bf300fcae5a346', '2018-10-11 15:09:55', '2018-10-11 15:09:55', 'dMHgDxnWgq457Pq+E1+8dg==', '{\"openId\":\"o4chG4wrJbFtTOGsZ6PmA3scmrkM\",\"nickName\":\"A-book\",\"gender\":0,\"language\":\"zh_TW\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/82oWucSHfnr5fuGGy86VkTjibicOWHLTy98iaNJwHUU3ia5URsSHrY6EpMJRzqqXXPo9uEwVSdAT6ILuoQGZpueyOw/132\",\"watermark\":{\"timestamp\":1539270593,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4wulvMh-iGvnp1C0S4p1KvI', '566e4918-ecf6-4865-8178-66ca3c35bfed', '41c819f08ef340767d5b053dec51fb2dd0119a8c', '2018-10-08 05:51:44', '2018-10-08 05:51:44', 'xASwrta7b04pHaaZ9Jlt0Q==', '{\"openId\":\"o4chG4wulvMh-iGvnp1C0S4p1KvI\",\"nickName\":\"花浩\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Nanjing\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIKH5m6BjMaOMr9obOqWx9ZT32e2KM2U1v9nGoUtB1lVFznAswaLLnhiaVdKQDcQM6nPAnKiarJmdWA/132\",\"watermark\":{\"timestamp\":1538977901,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4x3rc6v4GZxAccCklSBDHLQ', '47976759-639f-40a4-8aa0-d8458d643d7e', '052685d065f1404aa284586a5dba80d87f384fd1', '2018-10-12 04:40:24', '2018-10-12 04:40:24', 'DV5BKWVry2Ff6aXuGinMCw==', '{\"openId\":\"o4chG4x3rc6v4GZxAccCklSBDHLQ\",\"nickName\":\"L.\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Taizhou\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLtR6yn9vVvvVJnVsPB5kvdbUFZpI4BChnwIRmDzfqZYXRA8lwlroqELhpGTkiabKjwia04boMY0yzQ/132\",\"watermark\":{\"timestamp\":1539319223,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4y4Y-9nrMC5YKpUL_O-H0QA', '0e3f2f48-21de-43bb-bb00-934b974f3a0b', 'bb3268b4355206749c7bd39086b5627bbdb7b324', '2018-10-12 03:41:35', '2018-10-12 03:41:35', 'wepv5jI614bk2t+8n1q0sQ==', '{\"openId\":\"o4chG4y4Y-9nrMC5YKpUL_O-H0QA\",\"nickName\":\"暮光染指，岁月倾城\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/ViaqjkbzPo312UaFKKPUU6hicGrD0O8dOibhYyncthWiaB3tibq7GFhxeIVKt6GqbDuicoNN2yR8cnugJUzicwNnK0n6Q/132\",\"watermark\":{\"timestamp\":1539315692,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4yj_AQWr0W0bEbkiueCOz9Q', 'e3b39652-70de-400f-b006-fc948509c013', '584efdc74473552993590f60c4253be496464306', '2018-10-12 03:37:25', '2018-10-12 03:37:25', 'f6rkfISfFAfWgH6bYtlEwA==', '{\"openId\":\"o4chG4yj_AQWr0W0bEbkiueCOz9Q\",\"nickName\":\"孙建飞\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Xingtai\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqtOh4uluNyty0KfQLXTJyoWKspPiaYiby7Dr96HuGWJnxElHI6iaLbhb146lqpzvFPDOmKbxrljG4fw/132\",\"watermark\":{\"timestamp\":1539315443,\"appid\":\"wx19adb38a02715a7c\"}}'),
('o4chG4zWNCgy1-ZZdDeAgMdnWhmQ', '6f54a426-8bd9-4d7d-aee5-6d133e6c94f5', 'd9e7cda1f0c28fd7b23a381d8ea1438fcf696b51', '2018-10-12 09:28:55', '2018-10-12 09:28:55', 'iI6wkf1a+n0oxII4/Y6hKw==', '{\"openId\":\"o4chG4zWNCgy1-ZZdDeAgMdnWhmQ\",\"nickName\":\"小强\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Haidian\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKRTRKY71IuU5ibDzQ2wicDI23l5xPXpDYiaWxzGRBuSkHfDr0iam9ac3jgIequY89iaLsJsPRzQgRm6FQ/132\",\"watermark\":{\"timestamp\":1539336533,\"appid\":\"wx19adb38a02715a7c\"}}');

-- --------------------------------------------------------

--
-- 表的结构 `home_poster`
--

CREATE TABLE `home_poster` (
  `activity_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `home_poster`
--

INSERT INTO `home_poster` (`activity_id`) VALUES
(1),
(3);

-- --------------------------------------------------------

--
-- 表的结构 `moment`
--

CREATE TABLE `moment` (
  `moment_id` int(32) NOT NULL,
  `association_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_list` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liked` int(32) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment`(
    `moment_id` int(32) NOT NULL,
    `comment_id` int(32) AUTO_INCREMENT NOT NULL,
    `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `content` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
    `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `liked` int(32) NOT NULL DEFAULT 0,
    PRIMARY KEY(`comment_id`),
    KEY `comment_id` (`comment_id`) USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `publicNews`
--

CREATE TABLE `publicNews` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `article` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `further_info` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user_ticket`
--

CREATE TABLE `user_ticket` (
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_id` int(32) NOT NULL,
  `ticket_no` int(32) NOT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user_ticket`
--

INSERT INTO `user_ticket` (`open_id`, `activity_id`, `ticket_no`, `delete`) VALUES
('o4chG412hg0qJLpdXyTNOAW4G3mk', 2, 2, 0),
('o4chG42YnTIfb9fQYQ5LidjXS76Y', 1, 2, 0),
('o4chG44fktgR6qaRsWixZUwd7w8o', 1, 4, 0),
('o4chG45SA-VpqSX-RnqhYVr8HgvE', 1, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `association_album`
--
DROP TABLE IF EXISTS `association_album`;
CREATE TABLE `association_album` (
    `album_id` int(32) NOT NULL AUTO_INCREMENT,
    `album_name` varchar(100) NOT NULL ,
    `association_id` int(32) NOT NULL,
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    primary key (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=6;

--
-- 转存表中的数据 `association_album`
--

INSERT INTO `association_album` (album_id, album_name, association_id, create_time) VALUES
(1,'社团相册样例1',1,'2020-06-15 12:00:00'),
(2,'社团相册样例2',1,'2020-06-15 12:00:00'),
(3,'社团相册样例3',1,'2020-06-15 12:00:00'),
(4,'社团相册样例4',102,'2020-06-15 12:00:00'),
(5,'社团相册样例5',102,'2020-06-15 12:00:00');


-- --------------------------------------------------------

--
-- 表的结构 `photo`
--
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
    `photo_id` int(32) NOT NULL AUTO_INCREMENT,
    `description` varchar(500),
    `image_src` varchar(500) NOT NULL ,
    `album_id` int(32) NOT NULL ,
    `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=13;

--
-- 转存表中的数据 `photo`
--

INSERT INTO `photo` (photo_id, description, image_src, album_id) VALUES
(1,'社团照片样例1','https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1592192179&di=f28c407031e652f6d0059a0567e0a97a&src=http://ku.90sjimg.com/element_pic/17/05/18/e00e570d52eaa3fd824f07f328804f64.jpg',1),
(2,'社团照片样例2','https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1073989505,2071994816&fm=26&gp=0.jpg',1),
(3,'社团照片样例3','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=10754526,522141627&fm=26&gp=0.jpg',1),
(4,'社团照片样例4','https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1073989505,2071994816&fm=26&gp=0.jpg',2),
(5,'社团照片样例5','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=10754526,522141627&fm=26&gp=0.jpg',2),
(6,'社团照片样例6','https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1953768877,1566052938&fm=26&gp=0.jpg',2),
(7,'社团照片样例7','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=10754526,522141627&fm=26&gp=0.jpg',3),
(8,'社团照片样例8','https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1073989505,2071994816&fm=26&gp=0.jpg',3),
(9,'社团照片样例9','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=10754526,522141627&fm=26&gp=0.jpg',3),
(10,'社团照片样例10','https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1953768877,1566052938&fm=26&gp=0.jpg',3),
(11,'自行车协会活动1','https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2283741590,3282225694&fm=26&gp=0.jpg',4),
(12,'自行车协会活动1','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2508441358,1040572469&fm=26&gp=0.jpg',4);
-- --------------------------------------------------------

--
-- 表的结构 `message_wall`
--
DROP TABLE IF EXISTS `message_wall`;
CREATE TABLE `message_wall` (
        `message_id` int(32) NOT NULL AUTO_INCREMENT,
        `content` varchar(1000) NOT NULL ,
        `likes` int(32) NOT NULL DEFAULT 0,
        `status` int(1) NOT NULL DEFAULT false,
        `association_id` int(32) NOT NULL,
        `user_avatarUrl` varchar(255),
        `user_name` varchar(255) NOT NULL ,
        `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        primary key (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5;

--
-- 转存表中的数据 `message_wall`
--

INSERT INTO `message_wall` (message_id, content, likes,status, association_id, user_avatarUrl, user_name, date) VALUES
(1,'一个积极向上，朝气蓬勃的社团，加油！！',2,true,1,'https://i1.hdslb.com/bfs/face/cbd37566b7c772d7a5c66d7fd2628b9cf610f897.jpg@87w_88h_1c_100q.webp','小邪神','2020-06-15 12:00:00'),
(2,'一个积极向上，朝气蓬勃的社团，加油！！',0,true,1,'https://i1.hdslb.com/bfs/face/cbd37566b7c772d7a5c66d7fd2628b9cf610f897.jpg@87w_88h_1c_100q.webp','小邪神','2020-06-15 12:00:00'),
(3,'一个积极向上，朝气蓬勃的社团，加油！！',0,true,1,'https://i1.hdslb.com/bfs/face/cbd37566b7c772d7a5c66d7fd2628b9cf610f897.jpg@87w_88h_1c_100q.webp','小邪神','2020-06-15 12:00:00'),
(4,'一个积极向上，朝气蓬勃的社团，加油！！',2,false,1,'https://i1.hdslb.com/bfs/face/cbd37566b7c772d7a5c66d7fd2628b9cf610f897.jpg@87w_88h_1c_100q.webp','小邪神','2020-06-15 12:00:00');
-- --------------------------------------------------------
--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `activity_ticket`
--
ALTER TABLE `activity_ticket`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_read`
--
ALTER TABLE `article_read`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `association_audit`
--
ALTER TABLE `association_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `association_joiner`
--
ALTER TABLE `association_joiner`
  ADD PRIMARY KEY (`open_id`,`association_id`),
  ADD KEY `open_id` (`open_id`);

--
-- Indexes for table `association_manager`
--
ALTER TABLE `association_manager`
  ADD PRIMARY KEY (`open_id`,`association_id`),
  ADD KEY `open_id` (`open_id`);

--
-- Indexes for table `association_official`
--
ALTER TABLE `association_official`
  ADD PRIMARY KEY (`id`,`official`);

--
-- Indexes for table `association_qq`
--
ALTER TABLE `association_qq`
  ADD PRIMARY KEY (`id`,`qq`);

--
-- Indexes for table `association_video`
--
ALTER TABLE `association_video`
  ADD PRIMARY KEY (`association_id`);

--
-- Indexes for table `cSessionInfo`
--
ALTER TABLE `cSessionInfo`
  ADD PRIMARY KEY (`open_id`),
  ADD KEY `openid` (`open_id`) USING BTREE,
  ADD KEY `skey` (`skey`) USING BTREE;

--
-- Indexes for table `moment`
--
ALTER TABLE `moment`
  ADD PRIMARY KEY (`moment_id`);

--
-- Indexes for table `publicNews`
--
ALTER TABLE `publicNews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `user_ticket`
--
ALTER TABLE `user_ticket`
  ADD PRIMARY KEY (`open_id`,`activity_id`),
  ADD KEY `open_id` (`open_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `association`
--
ALTER TABLE `association`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- 使用表AUTO_INCREMENT `association_audit`
--
ALTER TABLE `association_audit`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `moment`
--
ALTER TABLE `moment`
  MODIFY `moment_id` int(32) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
