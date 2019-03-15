INSERT INTO `yourphp_menu` VALUES ('88','7','Share','','','1','1','0','分享管理','','99');
INSERT INTO `yourphp_menu` VALUES ('89','92','Share','uploads','','1','1','0','上传','','99');
INSERT INTO `yourphp_config` VALUES ('tpl', '分享模板', '7', 'abc.html', '0');

CREATE TABLE `mq_share` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NOT NULL DEFAULT "",
  `name` VARCHAR(30) NOT NULL DEFAULT '',
  `source` TEXT	NOT NULL ,
  `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `lang` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MYISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;