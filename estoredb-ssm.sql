/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.15 : Database - estoredb-ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`estoredb-ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `estoredb-ssm`;

/*Table structure for table `tb_board` */

DROP TABLE IF EXISTS `tb_board`;

CREATE TABLE `tb_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_issue_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext CHARACTER SET utf8,
  `issue_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `tb_board` */

insert  into `tb_board`(`id`,`board_issue_name`,`content`,`issue_time`) values (27,'本商城自即日起退出优惠','本商城大部分商品优惠活动','2008-12-01 08:00:00'),(28,'城招代理商','因业务量不断的扩大，本商城招聘各地的代理商','2008-12-01 08:00:00'),(29,'春节到了','春节将近，本商城的所有员工祝所有顾客，节日快乐，谢谢','2008-12-01 08:00:00'),(30,'五一节快乐','五一节即将来临，本商城将给员工发放500员奖金','2008-12-01 08:00:00'),(31,'父亲节快乐122','祝天下的父亲节日快乐','2008-12-01 08:00:00'),(32,'打折大行动开始啦','为庆祝本商城开业一周年，特定所有商品八八折，广大客户朋友们敬请光临','2008-12-01 08:00:00'),(33,'价格战已经打响','大部分商城的价格战已经开始了，我们的商城已经开始了','2008-12-01 08:00:00'),(34,'母亲节快乐','祝天下的母亲节日快乐','2008-12-01 08:00:00'),(35,'安全注意','最近不少黑客袭击本站点，现已报告警方，请客户朋友注意自己的交易安全','2008-12-01 08:00:00'),(36,'柜台出租','现有空余柜台3个，请有意者联系本商城','2008-12-01 08:00:00'),(37,'国庆节快乐','很快就国庆中秋啦，祝41131X班全体同学节日快乐。\r\n\r\n韩\r\n','2012-09-25 10:59:00'),(38,'更新后的E-Store发布','最新的更新系统已经正式上线，请各位同学下载。','2013-08-16 19:32:00');

/*Table structure for table `tb_cart_item` */

DROP TABLE IF EXISTS `tb_cart_item`;

CREATE TABLE `tb_cart_item` (
  `cart_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`cart_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_cart_item` */

insert  into `tb_cart_item`(`cart_item_id`,`product_id`,`user_id`,`product_name`,`price`,`quantity`) values (5,36,72,'洗衣机',1000,5),(6,38,72,'液晶显示器',1200,1),(7,39,72,'液晶显示器',1500,1),(8,36,76,'洗衣机',1000,3);

/*Table structure for table `tb_category_branch` */

DROP TABLE IF EXISTS `tb_category_branch`;

CREATE TABLE `tb_category_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_main_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tb_category_branch` (`category_main_id`),
  CONSTRAINT `FK_tb_category_branch` FOREIGN KEY (`category_main_id`) REFERENCES `tb_category_main` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

/*Data for the table `tb_category_branch` */

insert  into `tb_category_branch`(`id`,`category_main_id`,`name`,`create_time`) values (54,18,'显示器','2009-05-12 22:12:00'),(55,17,'上衣','2009-05-12 22:12:00'),(56,16,'洗衣机','2009-05-12 22:12:00'),(57,16,'电视机','2009-05-12 22:12:00'),(58,20,'杯子','2009-05-12 22:12:00'),(59,19,'自行车','2009-05-12 22:12:00'),(60,20,'电动类','2009-05-12 22:12:00'),(61,17,'裤子','2009-05-12 22:12:00'),(62,17,'鞋子','2009-05-13 12:24:00'),(63,20,'锅','2009-05-23 21:12:00'),(64,20,'刀具','2009-05-23 21:12:00'),(65,20,'水壶','2009-05-23 21:12:00'),(66,21,'小饰物','2009-08-18 15:43:00');

/*Table structure for table `tb_category_main` */

DROP TABLE IF EXISTS `tb_category_main`;

CREATE TABLE `tb_category_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `tb_category_main` */

insert  into `tb_category_main`(`id`,`name`,`create_time`) values (16,'电器','2008-09-14 08:00:00'),(17,'服饰','2008-09-14 08:00:00'),(18,'计算机','2008-09-14 08:00:00'),(19,'交通工具','2008-09-14 08:00:00'),(20,'日用','2008-09-14 08:00:00'),(21,'玩具','2008-09-14 08:00:00'),(22,'收藏','2008-09-14 08:00:00'),(27,'办公家俱','2013-08-25 11:35:00'),(29,'游戏',NULL),(30,'123',NULL),(31,'45',NULL),(32,'04',NULL),(34,'04',NULL);

/*Table structure for table `tb_customer` */

DROP TABLE IF EXISTS `tb_customer`;

CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `real_name` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `password_question` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `password_hint_answer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

/*Data for the table `tb_customer` */

insert  into `tb_customer`(`id`,`user_name`,`password`,`real_name`,`mobile`,`email`,`password_question`,`password_hint_answer`) values (68,'sa','2465a19cc9dfe758','sa','15850504800','sa@njcit.cn','sa','sa'),(69,'han','f1aefafbca0411e8','han','15850504888','han','han','han'),(70,'wangjs','wangjs','wangjs','15850504888','wangjs','wangjs','wangjs'),(71,'1','292005f91a529620','1','1','1','1','1'),(72,'a','a','a','a','a','a','a'),(73,'b','b','b','b','b','b','b'),(74,'C','C','C','C','C','C','C'),(75,'QWE','QWE','QWE','QWE','QWE','QWE','QWE'),(76,'zll','zll','cas','sdasa','dsadsa','aaa','aaa'),(77,'123','123','123','123','123','123','123');

/*Table structure for table `tb_link` */

DROP TABLE IF EXISTS `tb_link`;

CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `link_URL` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `tb_link` */

insert  into `tb_link`(`id`,`link_name`,`link_URL`) values (28,'淘宝','http://www.taobao.com'),(29,'京东商城','http://www.360buy.com/'),(32,'当当网','http://www.home.dangdang.com/'),(34,'搜狐','http://www.sohu.com'),(35,'苏宁易购','http://www.sunin.com'),(36,'11','111');

/*Table structure for table `tb_manager` */

DROP TABLE IF EXISTS `tb_manager`;

CREATE TABLE `tb_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sign` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `tb_manager` */

insert  into `tb_manager`(`id`,`name`,`password`,`real_name`,`sign`) values (15,'admin','admin','admin',''),(16,'manager','manager','manager','\0'),(19,'sa','sa','sa','\0'),(20,'1','292005f91a529620','1','\0'),(21,'2','2','2',''),(24,'ma','123','ma','\0'),(25,'mt','mt','mt','\0');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `total_price` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `delivery_method` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `memo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `delivery_sign` bit(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `payment_mode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_order` */

insert  into `tb_order`(`order_id`,`name`,`real_name`,`address`,`mobile`,`total_price`,`delivery_method`,`memo`,`delivery_sign`,`create_time`,`payment_mode`) values ('201310190026070732426','sa','sa','江苏南京栖霞区老城区98号','15850504888','2200','特快专递','请尽快发货，谢谢。','','2013-10-19 00:26:00','银行付款'),('201310222002150819885','wangjs','wangjs','江苏南京新城市广场5#808室','15850504888','688','普通邮寄','请尽快发货，谢谢。','','2013-10-22 20:02:00','现金支付'),('201310240944450450466','sa','sa','江苏南京仙林大学城','15850504888','101','普通邮寄','请尽快发货，谢谢。','','2013-10-24 09:45:00','现金支付'),('201310240945450221464','han','han','江苏鼓楼广场邮局2楼','15850504888','400','普通邮寄','请尽快寄出，谢。','\0','2013-10-24 09:46:00','现金支付'),('201310242012520664385','sa','sa','江苏南京栖霞区纬三路100号','15850504888','788','特快专递','请选择非工作日送货，谢','\0','2013-10-24 20:14:00','现金支付'),('201410071140220292138','1','1','','1','687','普通邮寄','','\0','2014-10-07 11:40:00','现金支付'),('201410071149000355612','1','1','南京孝陵卫','1','500','普通邮寄','江苏','\0','2014-10-07 11:49:00','现金支付'),('201410091532000844515','1','1','','1','101','??????','','\0','2014-10-09 15:32:00','??????'),('201410131822120623505','1','1','','1','1','普通邮寄','','\0','2014-10-13 18:22:00','现金支付'),('20200606104740315718','a','奥力给','地狱','a','0.0','普通邮寄','你好备注','\0','2020-06-06 10:47:40','银行付款'),('20200606161019522326','a','a','','a','0.0','','','','2020-06-06 16:10:19',''),('20200606161327867188','a','a','','a','0.0','普通邮寄','尽快发货','\0','2020-06-06 16:13:27','银行付款'),('20200609082853694660','a','a','dsa','a','0.0','普通邮寄','你好','\0','2020-06-09 08:28:53','银行付款'),('20200609084439574457','a','a','asd','a','0.0','特快专递','dsa','\0','2020-06-09 08:44:39','邮政付款'),('20200609084858794917','a','a','dsa','a','0.0','特快专递','dsafsadsa','\0','2020-06-09 08:48:58','邮政付款'),('20200612113634277511','123','123','江苏南京','123','0.0','普通邮寄','快点','\0','2020-06-12 11:36:34','邮政付款');

/*Table structure for table `tb_order_item` */

DROP TABLE IF EXISTS `tb_order_item`;

CREATE TABLE `tb_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

/*Data for the table `tb_order_item` */

insert  into `tb_order_item`(`id`,`order_id`,`product_id`,`product_name`,`product_price`,`amount`) values (27,'201310190026070732426',36,'洗衣机',1000,1),(28,'201310190026070732426',38,'液晶显示器',1200,1),(31,'201310222002150819885',56,'爱仕达不锈钢蒸锅JX1528',400,1),(32,'201310222002150819885',52,'耐克NIKE男短袖针织衫',288,1),(33,'201310240944450450466',55,'骆驼男皮鞋19784025棕色',100,1),(34,'201310240944450450466',57,'猪猪',1,1),(35,'201310240945450221464',55,'骆驼男皮鞋19784025棕色',100,1),(36,'201310240945450221464',49,'爱仕达4L爵士电热水壶',300,1),(37,'201310242012520664385',56,'爱仕达不锈钢蒸锅JX1528',400,1),(38,'201310242012520664385',54,'圣大保罗女凉鞋',100,1),(39,'201310242012520664385',52,'耐克NIKE男短袖针织衫',288,1),(40,'201410071140220292138',53,'耐克NIKE女针织七分裤',399,2),(41,'201410071140220292138',52,'耐克NIKE男短袖针织衫',288,1),(42,'201410071149000355612',56,'爱仕达不锈钢蒸锅JX1528',400,1),(43,'201410071149000355612',54,'圣大保罗女凉鞋',100,12),(44,'201410091532000844515',57,'猪猪',1,1),(45,'201410091532000844515',55,'骆驼男皮鞋19784025棕色',100,1),(46,'201410131822120623505',57,'猪猪',1,1),(47,'201411211701210191353',57,'猪猪',1,12),(48,'201411211701210191353',46,'锐步Reebok男运动鞋',499,1),(49,'201412091922340221238',56,'爱仕达不锈钢蒸锅JX1528',400,1),(50,'201412091922340221238',55,'骆驼男皮鞋19784025棕色',100,1),(51,'201412091926050390570',52,'耐克NIKE男短袖针织衫',288,1),(54,'20200606104740315718',0,'洗衣机',1000,1),(55,'20200606161019522326',0,'休闲',100,1),(56,'20200606161019522326',0,'苏泊尔精铸富铁锅FC30E',51,1),(57,'20200606161327867188',0,'洗衣机',1000,1),(58,'20200609082853694660',0,'洗衣机',1000,1),(59,'20200609082853694660',0,'液晶显示器',1200,1),(60,'20200609084439574457',0,'洗衣机',1000,2),(61,'20200609084858794917',0,'洗衣机',1000,1),(62,'20200612113634277511',0,'洗衣机',1000,1);

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_main_id` int(11) NOT NULL,
  `category_branch_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `producing_area` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `description` longtext CHARACTER SET utf8,
  `create_time` datetime DEFAULT NULL,
  `market_price` decimal(19,4) DEFAULT NULL,
  `sell_price` decimal(19,4) DEFAULT NULL,
  `product_amount` int(11) DEFAULT NULL,
  `picture` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `discount` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `tb_product` */

insert  into `tb_product`(`id`,`category_main_id`,`category_branch_id`,`name`,`producing_area`,`description`,`create_time`,`market_price`,`sell_price`,`product_amount`,`picture`,`discount`) values (36,16,57,'洗衣机','长春市*洗衣机公司','该洗衣机','2008-12-01 08:00:00','1000.0000','0.0000',4,'1195001711750.jpg','\0'),(37,19,59,'大自行车','长春市*永自行车厂','该自行车适合与小学生使用','2008-12-01 08:00:00','500.0000','0.0000',0,'1195000845828.jpg','\0'),(38,18,54,'液晶显示器','长春市三科技有限公司','该液晶显示器的大小是17存','2008-12-01 08:00:00','1200.0000','0.0000',1,'1195001047171.jpg','\0'),(39,18,54,'液晶显示器','长春市三科技有限公司','该液晶显示器的大小是19存','2008-12-01 08:00:00','1500.0000','0.0000',1,'1195001141953.jpg','\0'),(40,17,55,'休闲','生产厂家：NIKE','该休闲装适合','2008-12-01 08:00:00','100.0000','0.0000',2,'1195001840844.jpg','\0'),(44,17,61,'运动鞋','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2008-12-01 08:00:00','300.0000','200.0000',4,'1195000845821.jpg',''),(46,17,62,'锐步Reebok男运动鞋','生产厂家：Reebok','锐步Reebok全球著名运动品牌.','2009-05-23 21:12:00','499.0000','0.0000',23,'1195000845822.jpg','\0'),(47,20,64,'十八子作雀之屏切片刀','生产厂家：十八子作','造型美观高雅，设计理念时尚，具有艺术感，是现代家庭时尚的选择','2009-05-23 21:12:00','120.0000','100.0000',8,'1195000845823.jpg',''),(48,20,63,'苏泊尔精铸富铁锅FC30E','生产厂家：苏泊尔','生铁铸造，铁质纯净，有益健康','2009-05-23 21:12:00','420.0000','51.0000',44,'1195000845824.jpg',''),(49,20,65,'爱仕达4L爵士电热水壶','生产厂家：爱仕达','壶身采用优质不锈钢基材，匠心设计，精工制作；','2009-05-23 21:12:00','300.0000','0.0000',31,'1195000845825.jpg','\0'),(50,17,55,'耐克NIKE男短袖针织衫','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2008-12-01 08:00:00','200.0000','100.0000',4,'1195000845826.jpg',''),(52,17,55,'耐克NIKE男短袖针织衫','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2009-05-23 21:12:00','288.0000','0.0000',43,'1195000845827.jpg','\0'),(53,17,61,'耐克NIKE女针织七分裤','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2009-05-23 21:12:00','399.0000','0.0000',66,'1195000845829.jpg','\0'),(54,17,62,'圣大保罗女凉鞋','生产厂家：圣大保罗','圣大保罗长久以来深受欧美众多名流、绅士的推崇和喜爱。','2009-05-23 21:12:00','400.0000','100.0000',64,'1195000845820.jpg',''),(55,17,62,'骆驼男皮鞋19784025棕色','生产厂家：骆驼','豪迈鞋业有限公司是集研发、设计、生产及市场营销职能于一体的产业实体','2009-05-23 21:12:00','600.0000','100.0000',124,'1195000845830.jpg',''),(56,20,65,'爱仕达不锈钢蒸锅JX1528','生产厂家：爱仕达','锅身采用优质不锈钢基材，坚固耐用，导热迅速，节能省时','2009-05-23 21:12:00','499.0000','400.0000',43,'1195000845831.jpg',''),(57,21,66,'猪猪','卡卡玩具','顶贴猪','2009-08-18 16:31:00','4.0000','1.0000',36,'pig.jpg',''),(65,21,66,'熊大','南信','1234',NULL,'666.0000','0.0000',0,'fk-02.jpg','\0'),(66,20,64,'刀','南信','呵',NULL,'999.0000','0.0000',0,NULL,'\0'),(67,21,66,'中','南信','123456',NULL,'888.0000','0.0000',0,'fk999888.jpg','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
