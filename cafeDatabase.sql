DROP DATABASE IF EXISTS cafeInfo;
CREATE DATABASE cafeInfo;
USE cafeInfo;

GRANT ALL PRIVILEGES ON cafeInfo.* TO 'boardwalk_user'@'localhost' IDENTIFIED BY 'password123';


DROP TABLE IF EXISTS `menuItems`;
CREATE TABLE `menuItems` (
    `id` int(11) NOT NULL AUTO_INCREMENT ,
    `name` varchar(50) NOT NULL default '',
    `category` varchar(35)  NOT NULL default '',
    `medium_size` char(3) NOT NULL default 'MED', 
    `large_size` char(3) NOT NULL default '', 
    `price` int(5)  NOT NULL default 0,
    `large_price` int(5) NOT NULL default 0,
    `image` varchar(50) NOT NULL default 'default-menu-image.jpg',
    `in_stock` varchar(3) NOT NULL default 'YES',
    PRIMARY KEY (`id`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `menuItems` VALUES (1, 'Chicken','Sandwiches', 'MED', '', 510, 0, "chicken-sandwich.jpg", "YES"),
    (2, 'B.L.T','Sandwiches', 'MED', '', 510, 0, "blt.jpg", "YES"),
    (3, 'Turkey Club','Sandwiches', 'MED', '', 570, 0, "turkey-club.jpg", "YES"),
    (4, 'Traditional Club','Sandwiches', 'MED', '', 570, 0, "traditional-club.jpg", "YES"),

    (5, 'Traditional Club','Wraps', 'MED', '', 635, 0, "trad-club-wrap.jpg", "YES"),
    (6, 'Turkey Club','Wraps', 'MED', '', 665, 0, "turkey-wrap.jpg", "YES"),
    (7, 'Chicken','Wraps', 'MED', '', 630, 0, "chicken-wrap.jpeg", "YES"),
    (8, 'Ham and Cheese','Wraps', 'MED', '', 630, 0, "ham-cheese-wrap.jpg", "YES"),

    (9, 'Fried Chicken','Jamaican', 'MED', 'LRG', 700, 850, "fried-chicken.jpg", "YES"),
    (10, 'Spicy Baked Chicken','Jamaican', 'MED', 'LRG', 700, 850, "spicy-baked-chicken.jpg", "YES"),
    (11, 'BBQ Pork','Jamaican', 'MED', 'LRG', 700, 850, "bbq-pork.jpg", "YES"),
    (12, 'Curried Chicken','Jamaican', 'MED', 'LRG', 700, 850, "curried-chicken.jpg", "YES"),

    (13, 'Latte','Beverages', 'MED', 'LRG', 300, 410, "latte.jpg", "YES"),
    (14, 'Cappuchino','Beverages', 'MED', 'LRG', 300, 410, "cappuccino.jpg", "YES"),
    (15, 'Mocha','Beverages', 'MED', 'LRG', 320, 435, "mocha.png", "YES"),
    (16, 'Hot Chocolate','Beverages', 'MED', 'LRG', 255, 290, "hot-chocolate.jpg", "YES"),
    (17, 'Mint Tea','Beverages', 'MED', 'LRG', 180, 200, "mint-tea.jpeg", "YES");



DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL default '',
    `password` varchar(300)  NOT NULL default '',
    `reward points` int(11) NOT NULL default 0,
    `phoneNum` int(10) NOT NULL default 0,
    PRIMARY KEY (`id`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` VALUES(1, "John", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", 20,876948523),
(2, "Mary", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", 50,876468503);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `total` int(11) NOT NULL default 0,
    `items` varchar(300)  NOT NULL default '',
    `status` char(4) NOT NULL default 'OPEN',
    `delivered` varchar(3) NOT NULL default 'NO',
    `date` date NOT NULL default '0000-00-00',
    `gen_del_location` varchar(80) NOT NULL default '',
    `address` varchar(100) NOT NULL default '',
    `start_time` varchar(10) NOT NULL default '',
    `end_time` varchar(10) NOT NULL default '',
    `cusId` int(11) NOT NULL default 0,
    `deliveryPersonnel` varchar(100) NOT NULL default '',
    `payment` varchar(4) NOT NULL default '',
    PRIMARY KEY (`id`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `orders` VALUES (1, 1550, '10 MED, 12 LRG', 'OPEN', 'NO', '2022-11-26', 'UWI', 'Sagicor ATM, Leslie Robinson Hall', '02:31 pm', '02:36 pm', 2,'Chad Williams', 'CARD'),
(2, 550, '1 MED', 'OPEN', 'NO', '2022-11-26', 'UWI', 'T5 Mighty Dragons, ELR Towers', '02:31 pm', '02:36 pm', 1,'Chad Williams', 'CARD'),
(3, 1890, '5 MED, 12 LRG', 'OPEN', 'NO', '2022-12-02', 'Papine', 'Tastee, Papine Square', '02:35 pm', '02:42 pm', 2, 'Jason Campbell', 'CARD'),
(4, 150, '4 MED', 'OPEN', 'NO', '2022-12-02', 'UWI', 'Taylor Block A', '08:01 am', '08:06 am', 2, 'Chad Williams', 'CARD'),
(5, 1350, '12 LRG', 'OPEN', 'NO', '2022-12-02', 'Mona', 'Mona Road', '08:11 am', '08:14 am',2, 'Jason Campbell', 'CARD'),
(6, 870, '1 MED', 'OPEN', 'NO', '2022-12-02', 'Hope Pastures', '67 During Drive', '08:45 am', '08:53 am', 1,'Jason Campbell', 'CARD'),
(7, 700, '1 LRG', 'OPEN', 'NO', '2022-12-02', 'Old Hope Road', 'Bob Marley Museum', '10:02 am', '10:07 am', 2,'Jason Campbell', 'CARD'),
(8, 950, '7 MED', 'OPEN', 'NO', '2022-12-02', 'Jamaica College', 'Jamaica College Front Gate', '12:31 pm', '12:36 pm', 3,'Jason Campbell', 'CASH'),
(9, 1990, '16 MED, 10 LRG', 'OPEN', 'NO', '2022-12-02', 'UWI', 'Irving Hall, Angels of Genesis Ground Floor', '01:24 pm', '01:30 pm', 1,'Chad Williams', 'CARD'),
(10, 570, '4 MED', 'OPEN', 'NO', '2022-12-02', 'UWI', 'T4 Orion, ELR Towers', '02:31 pm', '02:36 pm', 2, 'Chad Williams', 'CASH'),
(11, 570, '4 MED', 'OPEN', 'NO', '2023-03-11', 'UWI', 'T4 Orion, ELR Towers', '02:31 pm', '02:36 pm', 1, 'Chad Williams', 'CASH');
 
DROP TABLE IF EXISTS `adminUsers`;
CREATE TABLE `adminUsers` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL default '',
    `password` varchar(300)  NOT NULL default '',
    `role` varchar(50) NOT NULL default '',
    PRIMARY KEY (`id`)

)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `adminUsers` VALUES(1, "Morell Parker", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", "manager"),
(2, "S.Morgan", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", "chef"),
(3, "Jason Campbell", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", "General Delivery"),
(4, "R.Brown", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", "server"),
(5, "Chad Williams", "2bbe0c48b91a7d1b8a6753a8b9cbe1db16b84379f3f91fe115621284df7a48f1cd71e9beb90ea614c7bd924250aa9e446a866725e685a65df5d139a5cd180dc9", "UWI Delivery");