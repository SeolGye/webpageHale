DROP TABLE IF EXISTS `members-roles`;
CREATE TABLE `members_roles`(
`mem_id` int(11) NOT NULL,
`role_id` int(11) NOT NULL,
PRIMARY KEY (`mem_id`,`role_id`),

KEY `FK_ROLE_idx` (`role_id`),

CONSTRAINT `FK_MEMBER` FOREIGN KEY(`mem_id`)
REFERENCES `member` (`mem_id`)
ON DELETE NO ACTION ON UPDATE NO ACTION,

CONSTRAINT `FK_ROLE` FOREIGN KEY(`role_id`)
REFERENCES `role` (`role_id`)
ON DELETE NO ACTION ON UPDATE NO ACTION
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET FOREIGN_KEY_CHECKS = 1;