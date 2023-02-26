create table songs (
    id int not null auto_increment,
    name varchar(255) not null,
    length float not null,
    album_id int not null,
    primary key (id),
    foreign key (album_id) references albums(id)
)