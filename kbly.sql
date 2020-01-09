SET NAMES UTF8;
DROP DATABASE IF EXISTS kbly;
CREATE DATABASE kbly CHARSET=UTF8;
USE kbly;
/*创建首页轮播图的表*/
CREATE TABLE kbly_index(
   kid INT  PRIMARY KEY AUTO_INCREMENT,
   img VARCHAR(200) NOT NULL  #路径
);
/*创建首页图片的表*/
CREATE TABLE index_img(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(200) NOT NULL, #路径
    iname VARCHAR(10) NOT NULL  #名称
);
/*创建文化娱乐的表*/
CREATE TABLE kbly_w(
    wid INT PRIMARY KEY AUTO_INCREMENT,  
    wname VARCHAR(20) NOT NULL,    #类名
    photo  VARCHAR(255) NOT NULL   #路径
);
/*创建餐饮住宿的表*/
CREATE TABLE kbly_c(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(19) NOT NULL,    #类名
    photo VARCHAR(225) NOT NULL    #路径
);
/*创建周边景点的表*/
CREATE TABLE kbly_z(
    jid INT PRIMARY KEY AUTO_INCREMENT,
    jname VARCHAR(20) NOT NULL,
    photo VARCHAR(225) NOT NULL
);
/*创建旅游产品的表*/
CREATE TABLE kbly_l(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    lname VARCHAR(20) NOT NULL,
    photo VARCHAR(225) NOT NULL
);

/*创建用户预订酒店的表*/
CREATE TABLE hotels_view(
    hid  INT  PRIMARY KEY AUTO_INCREMENT,
    hotel_room VARCHAR(10) NOT NULL,
    uname VARCHAR(5) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    remarks text NULL
);
/*给轮播图的表添加数据，插入轮播图数据  */
INSERT INTO kbly_index VALUES(NULL,'img/product/banner/i-1.jpg');
INSERT INTO kbly_index VALUES(NULL,'img/product/banner/i-2.jpg');

/*给首页的表添加数据*/
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-1.jpg','风筝节');
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-2.jpg','篝火晚会');
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-3.jpg','篝火晚会');
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-4.jpg','骑马');
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-5.jpg','风筝节');
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-6.jpg','射箭');
INSERT INTO index_img VALUES(NULL,'img/product/index/1F/1F-7.jpg','二人台');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-1.jpg','烤全羊');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-2.jpg','莜面窝窝');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-3.jpg','蒙古奶茶');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-4.jpg','手扒肉');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-5.jpg','拌苦菊');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-6.jpg','住宿环境');
INSERT INTO index_img VALUES(NULL,'img/product/index/2F/2F-7.jpg','住宿环境');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-1.jpg','金长城');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-2.jpg','南天门');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-3.jpg','南天门');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-4.jpg','南天门');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-5.jpg','康巴诺尔湖');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-6.jpg','康巴诺尔湖');
INSERT INTO index_img VALUES(NULL,'img/product/index/3F/3F-7.jpg','康巴诺尔湖');
INSERT INTO index_img VALUES(NULL,'img/product/index/4F/4F-1.jpg','【肉石宴】肉石');
INSERT INTO index_img VALUES(NULL,'img/product/index/4F/4F-2.jpg','【肉石宴】肉石宴');
INSERT INTO index_img VALUES(NULL,'img/product/index/4F/4F-3.jpg','【马奶酒】马奶酒');

/* 给文化娱乐的表添加数据
   插入二人台数据  two_people文件夹*/
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-1.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-2.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-3.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-4.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-5.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-6.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-7.jpg');
 INSERT INTO kbly_w VALUES(NULL,'二人台','img/product/kbly_w/two_people/t-8.jpg');
/* #插入风筝节数据  kite文件夹*/
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-1.jpg');
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-2.jpg');
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-3.jpg');
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-4.jpg');
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-5.jpg');
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-6.jpg');
 INSERT INTO kbly_w VALUES(NULL,'风筝节','img/product/kbly_w/kite/k-7.jpg');
 /*#插入骑马数据 horse文件夹*/
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-1.jpg');
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-2.jpg');
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-3.jpg');
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-4.jpg');
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-5.jpg');
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-6.jpg');
 INSERT INTO kbly_w VALUES(NULL,'骑马','img/product/kbly_w/horse/h-7.jpg');
 /*插入射箭数据  shejian文件夹*/
 INSERT INTO kbly_w VALUES(NULL,'射箭','img/product/kbly_w/shejian/s-1.jpg');
 INSERT INTO kbly_w VALUES(NULL,'射箭','img/product/kbly_w/shejian/s-2.jpg');
 INSERT INTO kbly_w VALUES(NULL,'射箭','img/product/kbly_w/shejian/s-3.jpg');
 INSERT INTO kbly_w VALUES(NULL,'射箭','img/product/kbly_w/shejian/s-4.jpg');
 INSERT INTO kbly_w VALUES(NULL,'射箭','img/product/kbly_w/shejian/s-5.jpg');
 INSERT INTO kbly_w VALUES(NULL,'射箭','img/product/kbly_w/shejian/s-6.jpg');
 /*插入篝火晚会数据  fire文件夹*/
 INSERT INTO kbly_w VALUES(NULL,'篝火晚会','img/product/kbly_w/fire/f-1.jpg');
 INSERT INTO kbly_w VALUES(NULL,'篝火晚会','img/product/kbly_w/fire/f-2.jpg');
 INSERT INTO kbly_w VALUES(NULL,'篝火晚会','img/product/kbly_w/fire/f-3.jpg');
 INSERT INTO kbly_w VALUES(NULL,'篝火晚会','img/product/kbly_w/fire/f-4.jpg');
 INSERT INTO kbly_w VALUES(NULL,'篝火晚会','img/product/kbly_w/fire/f-5.jpg');

 /*给餐饮住宿的表插入数据
   插入特色餐饮数据  eat文件夹*/
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-1.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-2.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-3.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-4.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-5.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-6.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-7.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-8.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-9.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-10.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-11.jpg');
INSERT INTO kbly_c VALUES(NULL,'特色餐饮','img/product/kbly_c/eat/e-12.jpg');
/*插入住宿的数据  hotel文件夹*/
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-1.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-2.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-3.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-4.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-5.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-6.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-7.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-8.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-9.jpg');
INSERT INTO kbly_c VALUES(NULL,'住宿环境','img/product/kbly_c/hotel/h-10.jpg');

/*给周边景点的表插入数据
插入金长城的数据  great_wall文件夹*/
INSERT INTO kbly_z VALUES(NULL,'金长城','img/product/kbly_z/great_wall/g-1.jpg');
INSERT INTO kbly_z VALUES(NULL,'金长城','img/product/kbly_z/great_wall/g-2.jpg');
INSERT INTO kbly_z VALUES(NULL,'金长城','img/product/kbly_z/great_wall/g-3.jpg');
INSERT INTO kbly_z VALUES(NULL,'金长城','img/product/kbly_z/great_wall/g-4.jpg');
/*插入康保南天门的数据  door文件夹*/
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-1.jpg');
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-2.jpg');
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-3.jpg');
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-4.jpg');
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-5.jpg');
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-6.jpg');
INSERT INTO kbly_z VALUES(NULL,'南天门','img/product/kbly_z/door/d-7.jpg');
/*插入康保康巴诺尔湖的数据  lakes文件夹*/
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-1.jpg');
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-2.jpg');
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-3.jpg');
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-4.jpg');
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-5.jpg');
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-6.jpg');
INSERT INTO kbly_z VALUES(NULL,'康巴诺尔湖','img/product/kbly_z/lakes/l-7.jpg');

/*给旅游产品的表插入数据
插入康保肉石的数据  meat文件夹*/
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-1.jpg');
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-2.jpg');
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-3.jpg');
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-4.jpg');
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-5.jpg');
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-6.jpg');
INSERT INTO kbly_l VALUES(NULL,'肉石','img/product/kbly_l/meat/m-7.jpg');
/*插入马奶酒的数据 kumiss文件夹*/
INSERT INTO kbly_l VALUES(NULL,'马奶酒','img/product/kbly_l/kumiss/k-1.jpg');
INSERT INTO kbly_l VALUES(NULL,'马奶酒','img/product/kbly_l/kumiss/k-2.jpg');
INSERT INTO kbly_l VALUES(NULL,'马奶酒','img/product/kbly_l/kumiss/k-3.jpg');
INSERT INTO kbly_l VALUES(NULL,'马奶酒','img/product/kbly_l/kumiss/k-4.jpg');
INSERT INTO kbly_l VALUES(NULL,'马奶酒','img/product/kbly_l/kumiss/k-5.jpg');





