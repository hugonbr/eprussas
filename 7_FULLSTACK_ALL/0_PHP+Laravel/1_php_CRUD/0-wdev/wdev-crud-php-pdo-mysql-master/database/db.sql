-- banco: wdev_vagas



CREATE TABLE `vagas` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
`titulo` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
`descricao` TEXT(65535) NOT NULL COLLATE 'utf8_general_ci',
`ativo` ENUM('s','n') NOT NULL COLLATE 'utf8_general_ci',
`data` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;
