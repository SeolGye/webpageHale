SET FOREIGN_KEY_CHECKS= 0;
DROP TABLE IF exists `cart`;
create table `cart`(
	`cart_id` int(11) NOT NULL AUTO_INCREMENT,
	`mem_id` int(11) default null,
	`mit_id`  int(11) default null,
	`cart_stock`  varchar(128) default null,
	`cart_date`  varchar(128) default null,
	
	PRIMARY KEY(`cart_id`)
    ,KEY `FK_MI_idx` (`mit_id`),
    CONSTRAINT `FK_MI` FOREIGN KEY(`mit_id`)
    REFERENCES `mall_item` (`mit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    
    KEY `FK_MEMBER_idx3` (`mem_id`),
    CONSTRAINT `FK_MEMBER_idx3` FOREIGN KEY(`mem_id`)
    REFERENCES `member` (`mem_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
    
) Engine=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS= 1;