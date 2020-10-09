/*
Navicat MySQL Data Transfer

Source Server         : vip
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : vip

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2020-10-09 16:56:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for index_pinpai
-- ----------------------------
DROP TABLE IF EXISTS `index_pinpai`;
CREATE TABLE `index_pinpai` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `zhekou` float(255,1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of index_pinpai
-- ----------------------------
INSERT INTO `index_pinpai` VALUES ('1', '美特斯邦威男女装疯抢-最后疯抢专场', '3.0', 'https://c.vpimg1.com/upcb/2020/09/08/169/ias_159955448168541_570x273_90.jpg');
INSERT INTO `index_pinpai` VALUES ('2', '左岸男女最后疯抢专场', '2.5', 'https://c.vpimg1.com/upcb/2020/08/06/99/ias_159669835557635_570x273_90.jpg');
INSERT INTO `index_pinpai` VALUES ('3', '森马男女装-最后疯抢专场', '3.0', 'https://c.vpimg1.com/upcb/2020/09/02/132/ias_159901241095335_570x273_90.jpg');
INSERT INTO `index_pinpai` VALUES ('4', 'mt女装专场', '3.2', 'https://d.vpimg1.com/upcb/2020/09/24/179/ias_bb7d9123a70462608e4709b1c1e8c975_570x273_90.jpg');
INSERT INTO `index_pinpai` VALUES ('5', 'URBAN REVIVO男女装-最后疯抢', '3.0', 'https://c.vpimg1.com/upcb/2020/09/18/178/ias_160041816399364_570x273_90.jpg');

-- ----------------------------
-- Table structure for index_top
-- ----------------------------
DROP TABLE IF EXISTS `index_top`;
CREATE TABLE `index_top` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `curl` varchar(255) DEFAULT NULL,
  `turl` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `num` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of index_top
-- ----------------------------
INSERT INTO `index_top` VALUES ('1', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/105940/2020/0417/166/4905155f-91f6-4dde-8bee-aa9947439986_290x290_90.jpg', 'https://h2.appsimg.com/a.appsimg.com/upload/brandcool/0/fb9effec5b464f05b571926615023ebb/10004328/primary_136x70_90.png', '58.00', '2166');
INSERT INTO `index_top` VALUES ('2', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/600020/2020/0330/109/eb307f39-e6a7-4625-8a75-b6fa8074e4e8_290x290_90.jpg', 'https://h2.appsimg.com/a.appsimg.com/upload/brandcool/0/b77ea935a73f4229a4bf522c3c4d4890/10010719/primary_136x70_90.png', '59.00', '233');
INSERT INTO `index_top` VALUES ('3', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcpos/1100001647/2020/0925/114/aab455ed-96c0-4c46-88e4-51ddf85c4856_290x290_90.jpg', 'https://h2.appsimg.com/a.appsimg.com/upload/brandcool/0/7e4e61ac2071401393ed39f04b41704e/10028135/primary_136x70_90.png', '89.00', '1261');
INSERT INTO `index_top` VALUES ('4', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/1000000001/2020/0826/138/1b07e915-4101-4075-80cf-9b0d89e21acf_290x290_90.jpg', 'https://h2.appsimg.com/a.appsimg.com/upload/brandcool/0/91363b4f258044a992ebe835a7ccd834/10016087/primary_136x70_90.png', '158.00', '525');
INSERT INTO `index_top` VALUES ('5', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/112092/2020/0528/81/c4acf0b4-036c-4e8c-95a6-7fa27c036dd0_290x290_90.jpg', 'https://h2.appsimg.com/a.appsimg.com/upload/brandcool/0/008870c6238044e6ab44bf11ff5a346a/10010067/primary_136x70_90.png', '69.00', '1206');
INSERT INTO `index_top` VALUES ('6', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/606883/2020/0905/91/130225d5-cfc4-4fd2-b707-bf2ee8e1ab94_290x290_90.jpg', 'https://h2.appsimg.com/a.appsimg.com/upload/brandcool/0/26226cae3aff410faa9c24120bdbffec/10011604/primary_136x70_90.png', '59.00', '2223');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `sid` int(255) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `oldprice` float(10,0) NOT NULL,
  `newprice` float(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `lurl` mediumtext NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('12', '宝格丽', '男士淡香水30/50/100ml 易烊千玺宝格丽全球香氛代言人', 'https://a.vpimg2.com/upload/merchandise/pdcvis/103464/2020/0825/196/1142083d-0fc8-4b41-b4c6-cb077efdb8dd.jpg', '860', '729.00', '8.5', 'https://a.vpimg2.com/upload/merchandise/pdcvis/103464/2020/0825/196/1142083d-0fc8-4b41-b4c6-cb077efdb8dd.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/07/90/26440f33-73a7-4195-a533-f943696acf34.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2020/07/07/69/65ebabbf-6c7b-4b78-b2ad-549f2326e1f4.jpg');
INSERT INTO `list` VALUES ('11', '圣罗兰', '（YSL）自由之水香水浓香 EDP50ML', 'https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/61/3480b990-770d-4c74-a5fa-1f6d5a735023.jpg', '1130', '745.00', '6.6', 'https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/61/3480b990-770d-4c74-a5fa-1f6d5a735023.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2020/07/14/186/d8217da7-aa3a-44ae-b907-1f6880931a6b.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/103/cc678701-62f1-4d79-ac12-520cf811bdda.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/14/169/be53050f-e581-484c-95c5-1e103e02f395.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/48/264ecabc-d5e2-47f7-b662-0743e773c80e.jpg');
INSERT INTO `list` VALUES ('10', '汤姆福特', 'TOM FORD 汤姆福特绝耀倾橙香水50ml', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/09/104/d0fcf574-b43a-4082-a639-a5b39fe962a0.jpg', '2000', '1700.00', '8.5', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/09/104/d0fcf574-b43a-4082-a639-a5b39fe962a0.jpg，https://a.vpimg2.com/upload/merchandise/pdcvis/2020/09/09/72/bb7d87cb-7a88-4ed1-8abf-b3b0f78a9c81.jpg');
INSERT INTO `list` VALUES ('9', 'Guerlain', '娇兰 花草水语淡香水75ml（圆舞榴光）', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/25/14/df879877-7f40-482e-a7f2-197424a3e66f.jpg', '730', '659.00', '9', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/25/14/df879877-7f40-482e-a7f2-197424a3e66f.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('8', 'CUCCI', '古驰 花悦女士香水 50ml', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2020/03/27/101/63312701585278826218.jpg', '910', '458.00', '5', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2019/03/07/128/638357371551941169811.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('7', 'MARC JACOBS', '莫杰雏菊梦境女士淡香水套装（30ml/50ml+4ml）', 'https://a.vpimg4.com/upload/merchandise/pdcvis/616170/2019/1206/35/1d912f8b-c3a9-4281-bfbf-40b7d24fc866.jpg', '495', '259.00', '5.2', 'https://a.vpimg4.com/upload/merchandise/pdcvis/616170/2019/1206/35/1d912f8b-c3a9-4281-bfbf-40b7d24fc866.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/616170/2019/1016/181/f5ae3bae-084d-4673-a333-bdc49a542964.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/616170/2019/1016/110/e83247d0-d86c-41ea-a682-ed0a07624584.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2019/0801/43/86cb9b0c-8408-4c7e-ad56-6fc0dde6ad67.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2020/0922/196/e6d125d5-7ca7-41cd-b664-f8f3d42f5ecc.jpg');
INSERT INTO `list` VALUES ('6', 'dior', '迪奥 小姐花漾甜心女士淡香水 100ml', 'https://a.vpimg2.com/upload/merchandise/pdcimg/2020/03/31/70/359422541585619280407.jpg', '1050', '665.00', '6.3', 'https://a.vpimg4.com/upload/merchandise/pdcvis/618740/2020/0928/56/92eb3420-2145-4fd8-aa26-32926d3f656e.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/35/5f500abb-07d1-476f-a2a6-d75cfc57bd35.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/618740/2020/0427/142/30e14bc3-39f5-42f7-b327-9feb24d09e4a_420x420_90.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/121/1b67bd76-95d3-4ba5-bb57-511b9fbbe922_420x420_90.jpg');
INSERT INTO `list` VALUES ('5', 'dior', '【多款可选】迪奥真我系列', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/08/20/121/7822e1ec-9dd5-4019-b159-efddc8bc7fe4.jpg', '1530', '1225.00', '8', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/08/20/121/7822e1ec-9dd5-4019-b159-efddc8bc7fe4.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('4', '范思哲', 'VERSACE 经典同名男士淡香水【全球直采】', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2019/03/07/128/638357371551941169811.jpg', '425', '229.00', '5.4', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2019/03/07/128/638357371551941169811.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,');
INSERT INTO `list` VALUES ('3', 'Calvin Klein', '卡尔文克雷恩卡雷优淡香水（炫金限量版）50ml/100ml', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg', '370', '149.00', '4', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('1', '冰希黎', '【张柏芝同款】幻彩鎏金香水体验套装流沙金', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/618740/2020/0928/56/92eb3420-2145-4fd8-aa26-32926d3f656e_235x235_90.jpg', '598', '155.58', '2.6', 'https://a.vpimg4.com/upload/merchandise/pdcvis/618740/2020/0928/56/92eb3420-2145-4fd8-aa26-32926d3f656e.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/35/5f500abb-07d1-476f-a2a6-d75cfc57bd35.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/618740/2020/0427/142/30e14bc3-39f5-42f7-b327-9feb24d09e4a_420x420_90.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/121/1b67bd76-95d3-4ba5-bb57-511b9fbbe922_420x420_90.jpg');
INSERT INTO `list` VALUES ('2', 'COACH', '古驰罪爱女士淡香水滚珠7.4ml 香水小样', 'https://a.vpimg3.com/upload/merchandise/pdcvis/614943/2020/0907/44/730e56fa-07ca-4975-8e48-ff02b9425146.jpg', '425', '199.75', '4.7', 'https://a.vpimg3.com/upload/merchandise/pdcvis/614943/2020/0907/44/730e56fa-07ca-4975-8e48-ff02b9425146.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/614943/2020/0921/64/315b6d60-dcf1-4b73-b737-5d58f52a4a68_420x420_90.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2019/0801/199/db02354b-e6bb-4106-9b48-abb6a1a3b8f6.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2019/0801/43/86cb9b0c-8408-4c7e-ad56-6fc0dde6ad67.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2020/0922/196/e6d125d5-7ca7-41cd-b664-f8f3d42f5ecc.jpg');
INSERT INTO `list` VALUES ('20', '宝格丽', '玫香金漾香水25/50ml 七夕礼物 易烊千玺宝格丽全球香氛代言人', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/07/79/e3979d1c-e978-42a7-9996-ffc623e6eca6.jpg', '545', '466.00', '8.5', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/07/79/e3979d1c-e978-42a7-9996-ffc623e6eca6.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/07/35/fd2db63d-bd26-42b2-af5b-8f85c5753a88.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/07/140/89264cf7-3352-480e-8c0b-9f5522721300.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/07/3/62eab66f-7464-4e0f-9d36-48e272605037.jpg');
INSERT INTO `list` VALUES ('13', '宝格丽', '男士淡香水30/50/100ml 易烊千玺宝格丽全球香氛代言人', 'https://a.vpimg2.com/upload/merchandise/pdcvis/103464/2020/0825/196/1142083d-0fc8-4b41-b4c6-cb077efdb8dd.jpg', '860', '729.00', '8.5', 'https://a.vpimg2.com/upload/merchandise/pdcvis/103464/2020/0825/196/1142083d-0fc8-4b41-b4c6-cb077efdb8dd.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/07/90/26440f33-73a7-4195-a533-f943696acf34.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2020/07/07/69/65ebabbf-6c7b-4b78-b2ad-549f2326e1f4.jpg');
INSERT INTO `list` VALUES ('14', '圣罗兰', '（YSL）自由之水香水浓香 EDP50ML', 'https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/61/3480b990-770d-4c74-a5fa-1f6d5a735023.jpg', '1130', '745.00', '6.6', 'https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/61/3480b990-770d-4c74-a5fa-1f6d5a735023.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2020/07/14/186/d8217da7-aa3a-44ae-b907-1f6880931a6b.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/103/cc678701-62f1-4d79-ac12-520cf811bdda.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/14/169/be53050f-e581-484c-95c5-1e103e02f395.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/14/48/264ecabc-d5e2-47f7-b662-0743e773c80e.jpg');
INSERT INTO `list` VALUES ('15', '汤姆福特', 'TOM FORD 汤姆福特绝耀倾橙香水50ml', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/09/104/d0fcf574-b43a-4082-a639-a5b39fe962a0.jpg', '2000', '1700.00', '8.5', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/09/104/d0fcf574-b43a-4082-a639-a5b39fe962a0.jpg，https://a.vpimg2.com/upload/merchandise/pdcvis/2020/09/09/72/bb7d87cb-7a88-4ed1-8abf-b3b0f78a9c81.jpg');
INSERT INTO `list` VALUES ('16', 'Guerlain', '娇兰 花草水语淡香水75ml（圆舞榴光）', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/25/14/df879877-7f40-482e-a7f2-197424a3e66f.jpg', '730', '659.00', '9', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/25/14/df879877-7f40-482e-a7f2-197424a3e66f.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('17', 'CUCCI', '古驰 花悦女士香水 50ml', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2020/03/27/101/63312701585278826218.jpg', '910', '458.00', '5', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2019/03/07/128/638357371551941169811.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('18', 'MARC JACOBS', '莫杰雏菊梦境女士淡香水套装（30ml/50ml+4ml）', 'https://a.vpimg4.com/upload/merchandise/pdcvis/616170/2019/1206/35/1d912f8b-c3a9-4281-bfbf-40b7d24fc866.jpg', '495', '259.00', '5.2', 'https://a.vpimg4.com/upload/merchandise/pdcvis/616170/2019/1206/35/1d912f8b-c3a9-4281-bfbf-40b7d24fc866.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/616170/2019/1016/181/f5ae3bae-084d-4673-a333-bdc49a542964.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/616170/2019/1016/110/e83247d0-d86c-41ea-a682-ed0a07624584.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2019/0801/43/86cb9b0c-8408-4c7e-ad56-6fc0dde6ad67.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2020/0922/196/e6d125d5-7ca7-41cd-b664-f8f3d42f5ecc.jpg');
INSERT INTO `list` VALUES ('19', 'dior', '迪奥 小姐花漾甜心女士淡香水 100ml', 'https://a.vpimg2.com/upload/merchandise/pdcimg/2020/03/31/70/359422541585619280407.jpg', '1050', '665.00', '6.3', 'https://a.vpimg4.com/upload/merchandise/pdcvis/618740/2020/0928/56/92eb3420-2145-4fd8-aa26-32926d3f656e.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/35/5f500abb-07d1-476f-a2a6-d75cfc57bd35.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/618740/2020/0427/142/30e14bc3-39f5-42f7-b327-9feb24d09e4a_420x420_90.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/121/1b67bd76-95d3-4ba5-bb57-511b9fbbe922_420x420_90.jpg');
INSERT INTO `list` VALUES ('21', 'dior', '【多款可选】迪奥真我系列', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/08/20/121/7822e1ec-9dd5-4019-b159-efddc8bc7fe4.jpg', '1530', '1225.00', '8', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/08/20/121/7822e1ec-9dd5-4019-b159-efddc8bc7fe4.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('22', '范思哲', 'VERSACE 经典同名男士淡香水【全球直采】', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2019/03/07/128/638357371551941169811.jpg', '425', '229.00', '5.4', 'https://a.vpimg3.com/upload/merchandise/pdcimg/2019/03/07/128/638357371551941169811.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,');
INSERT INTO `list` VALUES ('23', 'Calvin Klein', '卡尔文克雷恩卡雷优淡香水（炫金限量版）50ml/100ml', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg', '370', '149.00', '4', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpghttps://a.vpimg3.com/upload/merchandise/pdcvis/2019/08/02/39/87debc8c-1763-4b11-8480-ad2415019fe6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/08/02/7/17e17313-1063-4bc5-b73e-c7d7cd33888b.jpg');
INSERT INTO `list` VALUES ('24', '冰希黎', '【张柏芝同款】幻彩鎏金香水体验套装流沙金', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/618740/2020/0928/56/92eb3420-2145-4fd8-aa26-32926d3f656e_235x235_90.jpg', '598', '155.58', '2.6', 'https://a.vpimg4.com/upload/merchandise/pdcvis/618740/2020/0928/56/92eb3420-2145-4fd8-aa26-32926d3f656e.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/35/5f500abb-07d1-476f-a2a6-d75cfc57bd35.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/618740/2020/0427/142/30e14bc3-39f5-42f7-b327-9feb24d09e4a_420x420_90.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/618740/2020/0427/121/1b67bd76-95d3-4ba5-bb57-511b9fbbe922_420x420_90.jpg');
INSERT INTO `list` VALUES ('25', 'COACH', '古驰罪爱女士淡香水滚珠7.4ml 香水小样', 'https://a.vpimg3.com/upload/merchandise/pdcvis/614943/2020/0907/44/730e56fa-07ca-4975-8e48-ff02b9425146.jpg', '425', '199.75', '4.7', 'https://a.vpimg3.com/upload/merchandise/pdcvis/614943/2020/0907/44/730e56fa-07ca-4975-8e48-ff02b9425146.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/614943/2020/0921/64/315b6d60-dcf1-4b73-b737-5d58f52a4a68_420x420_90.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2019/0801/199/db02354b-e6bb-4106-9b48-abb6a1a3b8f6.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2019/0801/43/86cb9b0c-8408-4c7e-ad56-6fc0dde6ad67.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/614943/2020/0922/196/e6d125d5-7ca7-41cd-b664-f8f3d42f5ecc.jpg');
INSERT INTO `list` VALUES ('26', '宝格丽', '玫香金漾香水25/50ml 七夕礼物 易烊千玺宝格丽全球香氛代言人', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/07/79/e3979d1c-e978-42a7-9996-ffc623e6eca6.jpg', '545', '466.00', '8.5', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/07/07/79/e3979d1c-e978-42a7-9996-ffc623e6eca6.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/07/35/fd2db63d-bd26-42b2-af5b-8f85c5753a88.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/07/140/89264cf7-3352-480e-8c0b-9f5522721300.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/07/07/3/62eab66f-7464-4e0f-9d36-48e272605037.jpg');
INSERT INTO `list` VALUES ('27', 'DIOR', '【多色可选】迪奥烈艳蓝金口红唇膏系列', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/08/18/6/aaa5a37b-c1db-40ad-8e1b-99ec2df9bcf4.jpg', '330', '265.00', '8', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/08/18/6/aaa5a37b-c1db-40ad-8e1b-99ec2df9bcf4.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2018/12/24/9/15456335386362.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/05/15/12/e2b8681a-9ff1-4e4e-a3e2-1865ea43bb20.jpg');
INSERT INTO `list` VALUES ('28', 'EsteeLauder', '雅诗兰黛新沁水粉底液30ml【多色可选】', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/04/126/00010b6f-1048-44fc-abc1-8bf6c0153f51.jpg', '500', '375.00', '7.5', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/04/126/00010b6f-1048-44fc-abc1-8bf6c0153f51.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/11/13/141/bd95f3ad-dc4d-483e-842b-c71bb406f1a4.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2019/11/09/77/720134fb-5e4e-4d77-86c3-81a968485a78.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2019/11/09/66/3574fcab-e0f9-4d89-9020-cb48c50d0adf.jpg');
INSERT INTO `list` VALUES ('29', 'EsteeLauder', '雅诗兰黛DW持妆粉底液30ml【多色可选】', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/09/21/98/60db9651-308b-40b1-b1d7-d334a21289f6.jpg', '410', '325.00', '7.9', 'https://a.vpimg4.com/upload/merchandise/pdcvis/2020/09/21/98/60db9651-308b-40b1-b1d7-d334a21289f6.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2020/09/21/165/e1fb6d78-da9c-4c01-9d2e-9599b8203438.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/06/04/34/3398a667-9ae6-4df3-b7f8-61692e8e5db2.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/06/04/108/d19846c2-4e7e-4ac9-85a9-dd6bcc8e06ef.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2019/11/13/27/d2c8eb04-9f2d-4424-8220-351f84f2b58d.jpg');
INSERT INTO `list` VALUES ('30', 'Armani', '阿玛尼权力粉底液【多色可选】 02 03', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/02/24/5622ceda-d63b-4d6d-98ca-bbdd6987f59d.jpg', '580', '551.00', '9.5', 'https://a.vpimg3.com/upload/merchandise/pdcvis/2020/09/02/24/5622ceda-d63b-4d6d-98ca-bbdd6987f59d.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2019/09/04/168/76a138ca-6599-46d0-b289-6d827e7589ba.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/09/04/20/5bdfc9ac-f2d8-4a13-a998-e6684dea4ae1.jpg,https://a.vpimg3.com/upload/merchandise/pdcvis/2019/09/04/79/7f98eee9-d95a-45c3-a3c0-6a22af726cc0.jpg,https://a.vpimg2.com/upload/merchandise/pdcvis/2019/09/04/155/2d3fc31e-08d5-4910-97c3-c0fda5e25ed6.jpg,https://a.vpimg4.com/upload/merchandise/pdcvis/2019/09/04/42/c2c08255-0a5f-420e-9305-511cbc25d3c0.jpg');

-- ----------------------------
-- Table structure for twotitle
-- ----------------------------
DROP TABLE IF EXISTS `twotitle`;
CREATE TABLE `twotitle` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `btitle` varchar(255) DEFAULT NULL,
  `stitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of twotitle
-- ----------------------------
INSERT INTO `twotitle` VALUES ('7', '人气美衣', '防晒衣，短裤，牛仔裤，妈妈装，大码女装，外套');
INSERT INTO `twotitle` VALUES ('2', '美裙衣橱', '连衣裙，半身裙，套装裙，修身美裙，白色连衣裙，旗袍');
INSERT INTO `twotitle` VALUES ('3', '百搭上衣', 'T恤，衬衫，针织衫，卫衣，羊绒衫，毛衣');
INSERT INTO `twotitle` VALUES ('4', '外套', '棉衣，毛呢外套，羽绒服，西装外套，马甲，针织外套');
INSERT INTO `twotitle` VALUES ('5', '裤子', '短裤，休闲裤，阔腿裤，打底裤，连体/背带裤，哈伦裤');
INSERT INTO `twotitle` VALUES ('6', '面部保养', '眼部护理，卸妆，护肤套装，防晒，爽肤水，面膜，面部精华，洁面，唇部护理，乳液，面霜');
INSERT INTO `twotitle` VALUES ('1', '彩妆香水', '美甲，唇妆，眼眉妆，隔离妆前乳，BB霜，粉饼，粉底，气垫，素颜霜');
INSERT INTO `twotitle` VALUES ('8', '洗发护发', '染发造型，护发，洗发水');
INSERT INTO `twotitle` VALUES ('9', '沐浴润肤', '沐浴乳，沐浴套装，身体乳，护肤皂，沐浴磨砂');
INSERT INTO `twotitle` VALUES ('11', '女靴', '短靴，袜靴，高筒靴，切尔西靴，过膝靴，粗跟靴，马丁靴');
INSERT INTO `twotitle` VALUES ('12', '女单鞋', '浅口单鞋，粗跟鞋，深口单鞋，尖头鞋，低跟鞋，厚底鞋，高跟鞋，玛丽珍鞋，穆勒鞋');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `sid` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'nn', 'nn');
INSERT INTO `userinfo` VALUES ('7', 'sln', '11');
