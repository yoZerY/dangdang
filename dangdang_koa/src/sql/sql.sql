/*
说明：  INDEX `fk_secid`(`secondctgyid`) USING BTREE,
		  INDEX 表示创建索引，第18章有讲
*/

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `ISBN` varchar(20)  NOT NULL,
  `bookname` varchar(50)  NULL DEFAULT NULL,
  `author` varchar(20)  NOT NULL,
  `publishid` int NULL DEFAULT NULL,
  `publishername` varchar(20)  NULL DEFAULT NULL,
  `monthsalecount` int NULL DEFAULT NULL,
  `bookpicname` varchar(255)  NULL DEFAULT NULL,
  `secondctgyid` int NULL DEFAULT NULL,
  `thirdctgyid` int NULL DEFAULT NULL,
  `originalprice` double(10, 2) NULL DEFAULT NULL,
  `discount` double(6, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`ISBN`),
  INDEX `fk_secid`(`secondctgyid`) USING BTREE,
  INDEX `fk_thrdid`(`thirdctgyid`) USING BTREE,
  CONSTRAINT `fk_secid` FOREIGN KEY (`secondctgyid`) REFERENCES `secondctgy` (`secondctgyid`)  ON UPDATE CASCADE,
  CONSTRAINT `fk_thrdid` FOREIGN KEY (`thirdctgyid`) REFERENCES `thirdctgy` (`thirdctgyid`)  ON UPDATE CASCADE
)

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('978-7-101', '童年(小学语文\"快乐读书吧\".五年级阅读,高尔基自传体三部曲之一', '高尔基', 1, '人民出版社', 7898, '1童年.png', 3, 13, 39.00, 0.98);
INSERT INTO `books` VALUES ('978-7-102', '童年(高尔基自传小说3部曲之一.北师大教授郑海凌依据俄文原版翻', '郑海凌', 1, '人民出版社', 7898, '2童年.png', 3, 13, 29.00, 0.98);
INSERT INTO `books` VALUES ('978-7-103', '童年(快乐读书吧六年级上册推荐阅读(中小学生阅读指导丛书)无障碍', '王珍', 1, '人民出版社', 13452, '3童年.png', 3, 13, 27.00, 0.97);
INSERT INTO `books` VALUES ('978-7-104', '童年(快乐读书吧 六年级上指定阅读语文 阅读丛书', '张海迪', 13, '陕西师范大学出版社', 23567, '4童年.png', 3, 13, 19.80, 0.90);
INSERT INTO `books` VALUES ('978-7-105', '(未删减版) 六年级上 任教版名著阅读课程书 教材推荐书目 ', '周毅', 1, '人民出版社', 23567, '5童年.png', 3, 13, 37.80, 0.88);
INSERT INTO `books` VALUES ('978-7-106', '（无障碍英语导读版快乐读书吧阅读丛书）六年级上', '张海迪', 1, '人民出版社', 19689, '6童年.png', 3, 13, 37.80, 0.88);
INSERT INTO `books` VALUES ('978-7-107', '六年级下.任教版名著阅读课程书 教材推荐书目人', '周毅', 1, '人民出版社', 7455, '7童年.png', 3, 13, 8.80, 0.98);
INSERT INTO `books` VALUES ('978-7-108', '童年 快乐读书吧六年级上册阅读(中学生课外指导书)插画无', '钟宏', 1, '人民出版社', 20873, '8童年.png', 3, 13, 37.80, 0.92);
INSERT INTO `books` VALUES ('978-7-109', '新版童年(中学生课外指导书)插画无', '吴蔡婷', 1, '人民出版社', 9458, '9童年.png', 3, 13, 49.80, 0.89);
INSERT INTO `books` VALUES ('978-7-201', '加量版漫画(幼儿园课外指导书)插画无', '海青', 1, '人民出版社', 9879, '6半小时漫画.png', 3, 15, 49.80, 0.89);
INSERT INTO `books` VALUES ('978-7-202', '趣味童年(幼儿园课外指导书)插画无', '周婷', 1, '人民出版社', 8898, '8皮皮鲁转.png', 3, 15, 43.80, 0.88);
INSERT INTO `books` VALUES ('978-7-203', '丛林漫画(幼儿园课外指导书)插画无', '汤姆森', 1, '人民出版社', 45689, '3汤姆历险记.png', 3, 15, 46.80, 0.89);
INSERT INTO `books` VALUES ('978-7-204', '趣味童年(幼儿园课外指导书)插画无', '余秋雨', 1, '人民出版社', 29459, '2小王子.png', 3, 13, 58.80, 0.92);
INSERT INTO `books` VALUES ('978-7-205', '瓦尔登湖:世界上最修心的地方', '梭罗', 1, '人民出版社', 15678, '瓦尔登湖.png', 5, 26, 46.80, 0.89);
INSERT INTO `books` VALUES ('978-7-206', '活着,得有点兴致', '汪曾祺', 10, '江苏凤凰文艺出版社', 78120, '活着,得有点兴致.png', 5, 26, 28.80, 0.89);
INSERT INTO `books` VALUES ('978-7-207', '紫图经典文库三岛由纪夫大集合(10册)', '三岛由纪夫', 12, '时代文艺出版社', 15678, '紫图经典文库.png', 5, 26, 36.80, 0.89);
INSERT INTO `books` VALUES ('978-7-208', '庄子说什么', '韩鹏杰', 12, '时代文艺出版社', 78909, '庄子说什么.png', 5, 26, 28.80, 0.88);
INSERT INTO `books` VALUES ('978-7-209', '人生从容(在众声喧哗中保持从容(贾凭凹70岁)', '贾平凹', 12, '江苏凤凰文艺出版社', 13452, '人生从容.png', 5, 26, 9.89, 0.93);
INSERT INTO `books` VALUES ('978-7-210', '有本事-继<<无所谓>>后睽违三年,冯唐全新书', '冯唐', 6, '北京联合出版公司', 8765, '有本事.png', 5, 26, 34.00, 0.93);
INSERT INTO `books` VALUES ('978-7-211', '人生海海(敢死不是勇气,活着才需要勇气', '麦家', 12, '时代文艺出版社', 13452, '人生海海.png', 5, 27, 27.89, 0.89);
INSERT INTO `books` VALUES ('978-7-212', '云边有个小卖部', '张嘉佳', 12, '时代文艺出版社', 8765, '云边有个小卖部.png', 5, 27, 10.99, 0.93);
INSERT INTO `books` VALUES ('978-7-213', '追风筝的人', '卡麦得.胡塞尼', 12, '时代文艺出版社', 8198, '追风筝的人.png', 5, 27, 7.99, 0.90);
INSERT INTO `books` VALUES ('978-7-214', '白夜行', '韩鹏杰', 12, '时代文艺出版社', 68798, '白夜行.png', 5, 26, 28.80, 0.88);
INSERT INTO `books` VALUES ('978-7-215', '三体全集(全3册)', '刘慈欣', 4, '南海出版社', 8765, '三体全集.png', 5, 26, 9.89, 0.93);
INSERT INTO `books` VALUES ('978-7-216', '理想之城(全两册)', '若花燃燃', 4, '南海出版社', 13999, '理想之城.png', 5, 29, 7.99, 0.90);

-- ----------------------------
-- Table structure for firstctgy
-- ----------------------------
DROP TABLE IF EXISTS `firstctgy`;
CREATE TABLE `firstctgy`  (
  `firstCtgyId` int NOT NULL AUTO_INCREMENT,
  `firstctgyname` varchar(20)  NOT NULL,
  PRIMARY KEY (`firstCtgyId`)
)

-- ----------------------------
-- Records of firstctgy
-- ----------------------------
INSERT INTO `firstctgy` VALUES (1, '童书');
INSERT INTO `firstctgy` VALUES (2, '电子书');
INSERT INTO `firstctgy` VALUES (3, '女装');
INSERT INTO `firstctgy` VALUES (4, '食品');
INSERT INTO `firstctgy` VALUES (5, '男装');
INSERT INTO `firstctgy` VALUES (6, '数码相机');
INSERT INTO `firstctgy` VALUES (7, '创意文具');
INSERT INTO `firstctgy` VALUES (8, '童装童鞋');

-- ----------------------------
-- Table structure for historykeyword
-- ----------------------------
DROP TABLE IF EXISTS `historykeyword`;
CREATE TABLE `historykeyword`  (
  `historykeywordid` int NOT NULL AUTO_INCREMENT,
  `historykeyword` varchar(30)  NOT NULL,
  `clickcount` int NULL DEFAULT NULL,
  PRIMARY KEY (`historykeywordid`)
) 

-- ----------------------------
-- Records of historykeyword
-- ----------------------------
INSERT INTO `historykeyword` VALUES (1, '人生从容', 130);
INSERT INTO `historykeyword` VALUES (2, '人生海海', 17);
INSERT INTO `historykeyword` VALUES (3, '六年级上册', 5);
INSERT INTO `historykeyword` VALUES (4, '六年友谊', 2);
INSERT INTO `historykeyword` VALUES (5, '六年的苦练', 1);
INSERT INTO `historykeyword` VALUES (6, '大六山', 5);
INSERT INTO `historykeyword` VALUES (7, '五六', 6);
INSERT INTO `historykeyword` VALUES (8, '六年级下', 5);
INSERT INTO `historykeyword` VALUES (9, '快乐读书吧', 8);
INSERT INTO `historykeyword` VALUES (10, '北师大教授', 2);
INSERT INTO `historykeyword` VALUES (11, '人生', 5);
INSERT INTO `historykeyword` VALUES (12, '六年级', 42);
INSERT INTO `historykeyword` VALUES (14, '中学生课外指导', 4);
INSERT INTO `historykeyword` VALUES (15, '中学生', 7);
INSERT INTO `historykeyword` VALUES (16, '中小学生阅读', 3);
INSERT INTO `historykeyword` VALUES (17, '中小学生', 1);

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword`  (
  `keywordid` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(30)  NOT NULL,
  PRIMARY KEY (`keywordid`)
)  

-- ----------------------------
-- Records of keyword
-- ----------------------------
INSERT INTO `keyword` VALUES (1, '童年');
INSERT INTO `keyword` VALUES (2, '小学阅文');
INSERT INTO `keyword` VALUES (3, '快乐读书吧');
INSERT INTO `keyword` VALUES (4, '北师大教授');
INSERT INTO `keyword` VALUES (5, '六年级上册');
INSERT INTO `keyword` VALUES (6, '六年级');
INSERT INTO `keyword` VALUES (7, '高尔基');
INSERT INTO `keyword` VALUES (8, '郑海凌');
INSERT INTO `keyword` VALUES (9, '中小学生阅读');
INSERT INTO `keyword` VALUES (10, '中小学生');
INSERT INTO `keyword` VALUES (11, '任教版');
INSERT INTO `keyword` VALUES (12, '六年级上');
INSERT INTO `keyword` VALUES (13, '六年级下');
INSERT INTO `keyword` VALUES (14, '五六');
INSERT INTO `keyword` VALUES (15, '六年友谊');
INSERT INTO `keyword` VALUES (16, '六年的苦练');
INSERT INTO `keyword` VALUES (17, '六六');
INSERT INTO `keyword` VALUES (18, '大六山');
INSERT INTO `keyword` VALUES (19, '英语导读');
INSERT INTO `keyword` VALUES (20, '中学生课外指导');
INSERT INTO `keyword` VALUES (21, '中学生');
INSERT INTO `keyword` VALUES (22, '加量版漫画');
INSERT INTO `keyword` VALUES (23, '漫画');
INSERT INTO `keyword` VALUES (24, '幼儿园');
INSERT INTO `keyword` VALUES (25, '丛林漫画');
INSERT INTO `keyword` VALUES (26, '活着');
INSERT INTO `keyword` VALUES (27, '人生');
INSERT INTO `keyword` VALUES (28, '人生从容');
INSERT INTO `keyword` VALUES (29, '人生海海');

-- ----------------------------
-- Table structure for secondctgy
-- ----------------------------
DROP TABLE IF EXISTS `secondctgy`;
CREATE TABLE `secondctgy`  (
  `secondctgyid` int NOT NULL AUTO_INCREMENT,
  `secctgyname` varchar(20)  NOT NULL,
  `firstctgyId` int NOT NULL,
  PRIMARY KEY (`secondctgyid`),
  INDEX `fk_firstctgyid`(`firstctgyId`),
  CONSTRAINT `fk_firstctgyid` FOREIGN KEY (`firstctgyId`) REFERENCES `firstctgy` (`firstCtgyId`) 
)  

-- ----------------------------
-- Records of secondctgy
-- ----------------------------
INSERT INTO `secondctgy` VALUES (1, '0-2岁', 1);
INSERT INTO `secondctgy` VALUES (2, '3-6岁', 1);
INSERT INTO `secondctgy` VALUES (3, '7-10岁', 1);
INSERT INTO `secondctgy` VALUES (4, '11-14岁', 1);
INSERT INTO `secondctgy` VALUES (5, '文艺', 2);
INSERT INTO `secondctgy` VALUES (6, '人文社科', 2);
INSERT INTO `secondctgy` VALUES (7, '教育', 2);

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `shopcartid` int NOT NULL AUTO_INCREMENT,
  `bookisbn` varchar(20)  NOT NULL,
  `bookname` varchar(50)  NOT NULL,
  `bookpicname` varchar(60)  NOT NULL,
  `bookprice` int NOT NULL,
  `userid` int NOT NULL,
  `purcharsenum` int NULL DEFAULT 0,
  PRIMARY KEY (`shopcartid`)
)  

-- ----------------------------
-- Records of shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for thirdctgy
-- ----------------------------
DROP TABLE IF EXISTS `thirdctgy`;
CREATE TABLE `thirdctgy`  (
  `thirdctgyid` int NOT NULL AUTO_INCREMENT,
  `thirdctgyname` varchar(20)  NULL DEFAULT NULL,
  `secctgyid` int NULL DEFAULT NULL,
  PRIMARY KEY (`thirdctgyid`),
  INDEX `fk_secctgyid`(`secctgyid`),
  CONSTRAINT `fk_secctgyid` FOREIGN KEY (`secctgyid`) REFERENCES `secondctgy` (`secondctgyid`) 
)  

-- ----------------------------
-- Records of thirdctgy
-- ----------------------------
INSERT INTO `thirdctgy` VALUES (1, '图画故事', 1);
INSERT INTO `thirdctgy` VALUES (2, '认知', 1);
INSERT INTO `thirdctgy` VALUES (3, '益智游戏', 1);
INSERT INTO `thirdctgy` VALUES (4, '纸板书', 1);
INSERT INTO `thirdctgy` VALUES (5, '艺术课堂', 1);
INSERT INTO `thirdctgy` VALUES (6, '入园准备', 1);
INSERT INTO `thirdctgy` VALUES (7, '绘本', 2);
INSERT INTO `thirdctgy` VALUES (8, '科普百科', 2);
INSERT INTO `thirdctgy` VALUES (9, '少儿英语', 2);
INSERT INTO `thirdctgy` VALUES (10, '乐高学习', 2);
INSERT INTO `thirdctgy` VALUES (11, '入学准备', 2);
INSERT INTO `thirdctgy` VALUES (12, '文学', 3);
INSERT INTO `thirdctgy` VALUES (13, '科普百科', 3);
INSERT INTO `thirdctgy` VALUES (14, '卡通动漫', 3);
INSERT INTO `thirdctgy` VALUES (15, '童话', 3);
INSERT INTO `thirdctgy` VALUES (16, '少儿英语', 3);
INSERT INTO `thirdctgy` VALUES (17, '励志', 4);
INSERT INTO `thirdctgy` VALUES (18, '地理', 4);
INSERT INTO `thirdctgy` VALUES (19, '政治', 4);
INSERT INTO `thirdctgy` VALUES (20, '趣味幽默', 4);
INSERT INTO `thirdctgy` VALUES (21, '少儿英语', 4);
INSERT INTO `thirdctgy` VALUES (22, '益智游戏', 4);
INSERT INTO `thirdctgy` VALUES (23, '艺术课堂', 4);
INSERT INTO `thirdctgy` VALUES (24, '游戏/手工', 4);
INSERT INTO `thirdctgy` VALUES (25, '绘画', 4);
INSERT INTO `thirdctgy` VALUES (26, '小说', 5);
INSERT INTO `thirdctgy` VALUES (27, '哲理文学', 5);
INSERT INTO `thirdctgy` VALUES (28, '传记', 5);
INSERT INTO `thirdctgy` VALUES (29, '青春文学', 5);
INSERT INTO `thirdctgy` VALUES (30, '动漫/幽默', 5);
INSERT INTO `thirdctgy` VALUES (31, '艺术', 5);
INSERT INTO `thirdctgy` VALUES (32, '古籍', 5);
INSERT INTO `thirdctgy` VALUES (33, '法律', 5);
INSERT INTO `thirdctgy` VALUES (34, '经济', 5);
INSERT INTO `thirdctgy` VALUES (35, '宗教哲学', 6);
INSERT INTO `thirdctgy` VALUES (36, '历史', 6);
INSERT INTO `thirdctgy` VALUES (37, '传记', 6);
INSERT INTO `thirdctgy` VALUES (38, '教育', 6);
INSERT INTO `thirdctgy` VALUES (39, '社会科学', 6);
INSERT INTO `thirdctgy` VALUES (40, '艺术', 6);
INSERT INTO `thirdctgy` VALUES (41, '工具书', 6);
INSERT INTO `thirdctgy` VALUES (42, '教师用书', 6);
INSERT INTO `thirdctgy` VALUES (43, '考研', 6);
INSERT INTO `thirdctgy` VALUES (44, '公务员', 6);
INSERT INTO `thirdctgy` VALUES (45, '宗教哲学', 6);
INSERT INTO `thirdctgy` VALUES (46, '历史', 6);
INSERT INTO `thirdctgy` VALUES (47, '传记', 6);
INSERT INTO `thirdctgy` VALUES (48, '教育', 6);
INSERT INTO `thirdctgy` VALUES (49, '社会科学', 6);
INSERT INTO `thirdctgy` VALUES (50, '艺术', 6);
INSERT INTO `thirdctgy` VALUES (51, '工具书', 6);
INSERT INTO `thirdctgy` VALUES (52, '教师用书', 6);
INSERT INTO `thirdctgy` VALUES (53, '考研', 6);
INSERT INTO `thirdctgy` VALUES (54, '公务员', 6);
INSERT INTO `thirdctgy` VALUES (55, '图书100', NULL);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30)  NOT NULL,
  `psw` varchar(20)  NOT NULL,
  `address` varchar(50)  NULL DEFAULT NULL,
  `valid` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`userid`)
) 

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'admin', '123', 'dd', 1);
INSERT INTO `userinfo` VALUES (2, 'wangwu', '123', 'ss', 1);

