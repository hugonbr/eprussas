CREATE TABLE `todo`.`todos` (
    `todo_id` INT NOT NULL AUTO_INCREMENT,
    `todo` MEDIUMTEXT NULL,
    `complete` TINYINT NOT NULL DEFAULT '0',
    `date_complete` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
    `list` VARCHAR(85) NULL,
    PRIMARY KEY (`todo_id`)
);