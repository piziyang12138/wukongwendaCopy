create table users (
  id int not null PRIMARY key auto_increment,
  username VARCHAR(50) not null DEFAULT '',
  pwd VARCHAR(50) not null DEFAULT '',
  picpath VARCHAR(255) not null DEFAULT 'default.jpg'
)