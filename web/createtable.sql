create table user (
  id int not null PRIMARY key auto_increment,
  username VARCHAR(50) not null DEFAULT '',
  pwd VARCHAR(50) not null DEFAULT '',
  picpath VARCHAR(255) not null DEFAULT 'default.jpg',
  introduction VARCHAR(255) not null DEFAULT ''
)

create table article (
  aid int not null PRIMARY key auto_increment,
  title varchar(200) not null DEFAULT '',
  userid int not null DEFAULT -1,
  content LONGTEXT,
  createtime TIMESTAMP not null default CURRENT_TIMESTAMP,
  picpath VARCHAR(200)
)

create table commentinfo (
  cid int not null PRIMARY key auto_increment,
  userid int not null DEFAULT -1,
  content LONGTEXT,
  createtime TIMESTAMP not null default CURRENT_TIMESTAMP,
  chtml LONGTEXT,
  articleid int not null DEFAULT -1
)