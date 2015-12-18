drop database cheapomail;

create database cheapomail;

use cheapomail;

CREATE TABLE User
(
id int NOT NULL AUTO_INCREMENT,
firstname varchar(60) not null,
lastname varchar(60) NOT NULL,
password varchar(200) not null,
username varchar(200) not null,
PRIMARY KEY (id)
);

CREATE TABLE Message
(
id int NOT NULL AUTO_INCREMENT,
body varchar(4000) not null,
subject varchar(1000) NOT NULL,
recipient_ids int default null,
userid int not null,
foreign key (userid) references user(id) on delete cascade,
PRIMARY KEY (id)
);

create table Message_read (
id int NOT NULL AUTO_INCREMENT,
message_id int not null,
reader_id int not null,
date date not null,
foreign key (message_id) references message(id),
primary key (id)
);