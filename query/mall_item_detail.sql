SET FOREIGN_KEY_CHECKS= 0;
DROP TABLE IF exists `item_detail`;
create table `item_detail`(
	`midt_id` int(11) NOT NULL AUTO_INCREMENT,
	`mit_id` int(11) default null,
	`mem_id`  int(11) default null,
	`midt_title`  varchar(128) default null,
	`midt_price`  int(11) default null,
	`midt_status`  int(11) default null,

	PRIMARY KEY(`midt_id`)
    ,KEY `FK_MI_idx3` (`mit_id`),
    CONSTRAINT `FK_MI3` FOREIGN KEY(`mit_id`)
    REFERENCES `item` (`mit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    
    KEY `FK_MEM_idx5` (`mem_id`),
    CONSTRAINT `FK_MEM5` FOREIGN KEY(`mem_id`)
    REFERENCES `member` (`mem_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
    
) Engine=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS= 1;