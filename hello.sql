create database `demo-library` collate `utf8_unicode_ci`;
create  table  `authors`(
                            id int (11) not null auto_increment primary key ,
                            name varchar(255),
                            country varchar(255)
);
create  table `book`(
                        id int (11) not null auto_increment primary key ,
                        name varchar(255) not null ,
                        author_id int(11) not null ,
                        foreign key (author_id) references authors(id)

);

insert into `authors`(name,country) values ('To hoai','Ha noi');
insert into `authors`(name,country) values ('kim Lan','Nam Dinh');
insert into `authors`(name,country) values ('Thach lam','Hai phong');
insert into `authors`(name,country) values ('Nhat Anh','Hue');

nsert into `book`(name, author_id) values ('De men phuu luu ki', 1);
insert into `book`(name, author_id) values ('Vo nhat', 2);
insert into `book`(name, author_id) values ('Hai dua tre', 3);
insert into `book`(name, author_id) values ('Toi thay hoa vang tren co xanh', 4);
insert into `book`(name, author_id) values ('Lac', 2);

create table `publishers`(
                             id int (11) auto_increment primary key ,
                             name varchar(255) not null
);

create table `students`(
                           id int (11) auto_increment primary key ,
                           name varchar(255) not null ,
                           grade varchar(255) not null
);

create table `borrows`(
                          id int(11) auto_increment primary key ,
                          student_id int(11) not null ,
                          borrow_date datetime not null ,
                          borrow_return_date datetime not null,
                          foreign key (student_id) references students(id) on delete cascade
);

create table `borrow_details`(
                                 borrow_id int(11),
                                 book_id int(11),
                                 foreign key (borrow_id) references borrows(id) on DELETE cascade,
                                 foreign key (book_id) references book(id) on delete cascade
);

alter table `book` add column `publisher_id` int(11) not null;
set foreign_key_checks = 0;
alter  table  `book` add foreign key (publisher_id) references publishers(id) on DELETE cascade ;

insert into `publishers`(name) values ('NXB tre'),('NXB Kin Dong'),('NXB Nha Nam'),('NXB Da Nang');
insert into `students`(name,grade) values ('tiep','c0921k2'),('Luc','c0921k2'),('Dung','c0921k2'),('Nam','c0921k2'),('Ha','c0921k2');