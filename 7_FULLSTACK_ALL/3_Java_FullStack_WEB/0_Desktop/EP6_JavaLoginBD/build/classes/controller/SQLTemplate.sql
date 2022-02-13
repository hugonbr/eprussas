/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Hugo Nathan
 * Created: 01/05/2019
 */

create database epusuarios DEFAULT CHARACTER SET utf8;
use epusuarios;
create table usuario (
    login varchar (100) NOT NULL,
    nome varchar (150) NOT NULL,
    email varchar (100) NOT NULL,
    senha varchar (150) NOT NULL,
    primary key (login)
)
ENGINE = MyISAM; /*Remova esta linha para usar InnoDB por padrão*/