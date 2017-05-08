CREATE DATABASE real_estate;

CREATE TABLE customer (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50),
  address varchar(500),
  gender varchar(50),
  country varchar(50),
  phone varchar(50),
  email varchar(50),
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

insert into customer (name, gender, address, email, phone) values('Richard Gere', 'Male','Washington DC Street Block C 85','richardgere@yahoo.com','038372636232');
insert into customer (name, gender, address, email, phone) values('Tukul Arwana', 'Male','Jln Lingkaran subur 58','tukul@yahoo.com','038373273262');
insert into customer (name, gender, address, email, phone) values('Taylor Swift', 'Female','Hollywoord','tswift@yahoo.com','039223232323');
insert into customer (name, gender, address, email, phone) values('Sigit Prasetya', 'Male','Indonesia central of java','sigit@gmail.com','0271 85858588');

DROP TABLE IF EXISTS 'r_menu';
 
CREATE TABLE 'r_menu' (
  'id_menu' int(2) NOT NULL AUTO_INCREMENT,
  'nama_menu' varchar(100) DEFAULT NULL,
  'urutan' int(2) DEFAULT NULL,
  'icon' varchar(30) DEFAULT NULL,
  PRIMARY KEY ('id_menu')
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
 
insert  into 'r_menu'('id_menu','nama_menu','urutan','icon') values (1,'Master',1,'<i class=\"fa fa-bell\"></i> ');
insert  into 'r_menu'('id_menu','nama_menu','urutan','icon') values (2,'Customer',2,'<i class=\"fa fa-bomb\"></i> ');
insert  into 'r_menu'('id_menu','nama_menu','urutan','icon') values (3,'Utility',3,'<i class=\"fa fa-cubes\"></i> ');

DROP TABLE IF EXISTS 'r_menu_sub';
 
CREATE TABLE 'r_menu_sub' (
  'id_sub_menu' int(3) NOT NULL AUTO_INCREMENT,
  'nama_sub_menu' varchar(100) DEFAULT NULL,
  'id_menu' int(2) DEFAULT NULL,
  'urutan_sub_menu' int(2) DEFAULT NULL,
  'hak_akses' varchar(30) DEFAULT '4',
  'url' varchar(150) DEFAULT '#',
  'content_before' varchar(200) DEFAULT NULL,
  'content_after' varchar(200) DEFAULT NULL,
  'icon' varchar(150) DEFAULT NULL,
  'title' varchar(200) DEFAULT NULL,
  'target' enum('_self','_blank') DEFAULT '_self',
  PRIMARY KEY ('id_sub_menu'),
  KEY 'urutan_sub_menu_index' ('id_menu','urutan_sub_menu')
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
 
 
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (1,'Product',1,3,'2','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (2,'Brand',1,4,'2','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (3,'Customer',2,1,'2','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (4,'Sales',2,2,'2','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (5,'Backup',3,1,'4','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (6,'Reference',3,2,'4','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');
insert  into 'r_menu_sub'('id_sub_menu','nama_sub_menu','id_menu','urutan_sub_menu','hak_akses','url','content_before','content_after','icon','title','target') values (7,'bla bla bla',3,3,'4','#','','','<i class=\"fa fa-arrow-right\"></i>','Title please','_self');

DROP TABLE IF EXISTS 'user';
 
CREATE TABLE 'user' (
  'the_email' varchar(200) DEFAULT NULL,
  'the_password' varchar(100) DEFAULT NULL,
  'user_menu' varchar(254) DEFAULT NULL
) 
 
insert  into 'user'('the_email','the_password','user_menu') values ('test@test.com','e10adc3949ba59abbe56e057f20f883e','1,4,6');