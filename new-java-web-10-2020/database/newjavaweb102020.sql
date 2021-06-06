create database newjavaweb102020;

use newjavaweb102020;
create table question
(
	id bigint not null primary key auto_increment,
    content text not null,
    a text not null,
    b text not null,
    c text not null,
    d text not null,
    correct text not null,
    subjectid bigint,
    level int,
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp default CURRENT_TIMESTAMP
);
create table teacher(
	id bigint not null primary key auto_increment,
    name nvarchar(100),
    code varchar(50) unique,
    gender char(1),
    date date,
    email varchar(100),
    phone varchar(20),
    school nvarchar(200),
    province nvarchar(30),
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp
);
CREATE TABLE role(
  id bigint NOT NULL PRIMARY KEY auto_increment,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(255) NOT NULL,
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp
);
create table user(
	id bigint NOT NULL PRIMARY KEY auto_increment,
  username VARCHAR(150) NOT NULL,
  password VARCHAR(150) NOT NULL,
  fullname VARCHAR(150) NULL,
  status int NOT NULL default 1,
  roleid bigint NOT NULL,
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp
);

ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES role(id);

create table student(
	id bigint not null primary key auto_increment,
    name nvarchar(100),
    code varchar(50) unique,
    gender char(1),
    date date,
    email varchar(100),
    phone varchar(20),
    school nvarchar(200),
    province nvarchar(30),
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp
);


insert into role(code,name) values('ADMIN','QUản trị');
insert into role(code,name) values('GV','Giáo viên');
insert into role(code,name) values('HS','Học sinh');

insert into user(username,password,fullname,status, roleid) values('admin','123456','admin',1,1);
insert into user(username,password,fullname,status, roleid) values('nguyenvana','123456','nguyen van a',1,2);
insert into user(username,password,fullname,status, roleid) values('nguyenvanb','123456','nguyen van b',1,2);

select * from user;



create table class(
	id bigint not null primary key auto_increment,
    name nvarchar(100),
    code nvarchar(20) unique,
    status int NOT NULL default 1,
    teacherid bigint,
    subjectid bigint,
    level int,
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp
);

create table subject(
	id bigint not null primary key auto_increment,
    name nvarchar(100),
    code varchar(20),
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp

);



create table studying(
	id bigint not null primary key auto_increment,
    studentid bigint not null,
    classid bigint not null,
	createdate timestamp default CURRENT_TIMESTAMP,
    modifieddate timestamp
);



insert into subject(name,code) value ('Anh Văn','AV');
insert into subject(name,code) value ('Địa Lý','DL');
insert into subject(name,code) value ('Giáo Dục Công Dân','GDCD');
insert into subject(name,code) value ('Hóa Học','HH');
insert into subject(name,code) value ('Lịch Sử','LS');
insert into subject(name,code) value ('Sinh Học','SH');
insert into subject(name,code) value ('Toán','T');
insert into subject(name,code) value ('Vật Lý','VL');

select * from subject;

SELECT * FROM subject;


use newjavaweb102020;



insert into teacher(name,code,gender,date,email,phone) value ('Nguyễn Văn A','nguyenvana','m','1980-3-17','nguyenvana@gmail.com','0851852858');

insert into teacher(name,code,gender,date,email,phone) value ('Nguyễn Văn B','nguyenvanb','m','1990-2-11','nguyenvanb@gmail.com','0851852859');
insert into teacher(name,code,gender,date,email,phone) value ('Nguyễn Văn C','nguyenvanc','m','1988-12-6','nguyenvanc@gmail.com','0851852860');
insert into teacher(name,code,gender,date,email,phone) value ('Trần Thị D','tranthid','f','1987-10-1','tranthid@gmail.com','0851852861');
insert into teacher(name,code,gender,date,email,phone) value ('Trần Thị Loan','tranthiloan','f','1989-6-2','tranthiloan@gmail.com','0851852862');
insert into teacher(name,code,gender,date,email,phone) value ('Lê Văn Cao','levancao','u','1982-1-3','levancao@gmail.com','0851852863');
insert into teacher(name,code,gender,date,email,phone) value ('Bá Văn Lộc','bavanloc','n','1986-8-7','bavanloc@gmail.com','0851852864');

select * from teacher;


insert into student(name,code,gender,date,email,phone) value ('Nguyễn Văn Thái','thainv','m','2003-2-11','thainv@gmail.com','0879113101');
insert into student(name,code,gender,date,email,phone) value ('Trần Kiều','kieutran123','n','2003-1-23','kieutran123@gmail.com','0879113102');
insert into student(name,code,gender,date,email,phone) value ('Phạm Thị Hồng','hongpham37','f','2004-7-3','hongpham37@gmail.com','0879113103');
insert into student(name,code,gender,date,email,phone) value ('Vũ Bá Đức','ducbavu','m','2003-9-2','ducbavu@gmail.com','0879113104');
insert into student(name,code,gender,date,email,phone) value ('Hồ Đại Thiên','thienpro001','m','2005-2-20','thienpro001@gmail.com','0879113105');
insert into student(name,code,gender,date,email,phone) value ('Vũ Như Yên','nhuyenhighschool','f','2004-6-12','nhuyenhighschool@gmail.com','0879113106');
insert into student(name,code,gender,date,email,phone) value ('Đặng Thị Liên','dangthilien','f','2004-3-4','dangthilien@gmail.com','0879113107');
insert into student(name,code,gender,date,email,phone) value ('Bùi Tiến Dũng','tiendungbui','m','2003-7-8','tiendungbui@gmail.com','0879113108');
insert into student(name,code,gender,date,email,phone) value ('Đỗ Như Thạch','thachcaocung','m','2005-5-2','thachcaocung@gmail.com','0879113109');
insert into student(name,code,gender,date,email,phone) value ('Ngô Thị Phương','phuonghoanganbap','f','2005-11-19','phuonghoanganbap@gmail.com','0879113110');
insert into student(name,code,gender,date,email,phone) value ('Dương Như Nguyệt','sunandmoon','f','2003-1-11','sunandmoon@gmail.com','0879113101');

select * from student;


ALTER TABLE class ADD CONSTRAINT fk_class_subject FOREIGN KEY (subjectid) REFERENCES subject(id);
ALTER TABLE class ADD CONSTRAINT fk_class_teacher FOREIGN KEY (teacherid) REFERENCES teacher(id);


insert into class(name,code,teacherid,subjectid,level) value('Toán 10 Thầy Nguyễn Văn A','T1011',1,7,10);	/*Code = Subject + Level + TeacherID + numClass CreatedBy Teacher*/
insert into class(name,code,teacherid,subjectid,level) value('Hóa Học 12 Trần Thị Loan','HH1261',5,6,12);
insert into class(name,code,teacherid,subjectid,level) value('GDCD 11 Nguyễn Văn C','GDCD1141',4,3,11);
insert into class(name,code,teacherid,subjectid,level) value('Toán 11 Thầy Nguyễn Văn A','T1112',1,7,11);
insert into class(name,code,teacherid,subjectid,level) value('Lịch Sử 10 Lê Văn Cao','LS1071',7,5,10);
insert into class(name,code,teacherid,subjectid,level) value('Toán 11 Trần Thị D','T1151',5,7,11);

select * from class;


ALTER TABLE studying ADD CONSTRAINT fk_studying_student FOREIGN KEY (studentid) REFERENCES student(id);
ALTER TABLE studying ADD CONSTRAINT fk_studying_class FOREIGN KEY (classid) REFERENCES class(id);


insert into studying(studentid,classid) value(1,2);	/*2003-Lv: 12 - 2004-Lv: 11 - 2005-Lv: 10*/
insert into studying(studentid,classid) value(9,1);
insert into studying(studentid,classid) value(5,5);
insert into studying(studentid,classid) value(5,1);
insert into studying(studentid,classid) value(3,3);
insert into studying(studentid,classid) value(3,6);

select * from studying;

select * from class;



ALTER TABLE question ADD CONSTRAINT fk_question_subject FOREIGN KEY (subjectid) REFERENCES subject(id);

insert into question(content,a,b,c,d,correct,subjectid,level) value ('Vị trí của thời kỳ Văn Lang-Âu Lạc trong lịch sử dân tộc là','Định hình bản sắc truyền thống của dân tộc VN','Mở đầu thời kì dựng nước, định hình bản sắc truyền thống của dân tộc Việt','Mở đầu thời kì dựng nước, phát triển bản sắc truyền thống của dân tộc Việt','Giữ vững bản sắc truyền thống của dân tộc Việt','b',5,10);
insert into question(content,a,b,c,d,correct,subjectid,level) value ('Cuộc khởi nghĩa nào đánh dấu nhân dân ta cơ bản giành được độc lập từ phong kiến phương Bắc','Khởi nghĩa Hai Bà Trưng','Khởi nghĩa Lý Bí','Khởi nghĩa Mai Thúc Loan','Khởi nghĩa Khúc Thừa Dụ','d',5,10);
insert into question(content,a,b,c,d,correct,subjectid,level) value ('Vị vua nào cho “lập văn miếu ở kinh đô Thăng Long, đắp tượng Khổng Tử, Chu Công, vẽ 72 vị hiền tài, bốn mùa cúng tế và cho Hoàng Thái tử đến học” vào năm 1070.','Lý Thái Tổ ','Lý Thái Tông','Lý Nhân Tông','Lý Thánh Tông','d',5,10);
insert into question(content,a,b,c,d,correct,subjectid,level) value ('Chế độ phong kiến Việt Nam phát triển thịnh đạt nhất vào thời nào?','Nhà Trần','Nhà Lý','Nhà Lê sơ','Nhà Nguyễn','c',5,10);
insert into question(content,a,b,c,d,correct,subjectid,level) value ('Cuộc chiến tranh Nam - Bắc triều là cuộc tranh giành quyền lực giữa các phe phái đối lập nào?','Lê (Nam triều) - Trịnh (Bắc triều)','Trịnh (Nam Triều) - Mạc (Bắc triều)','Mạc (Nam Triều) – Nguyễn (Bắc triều)','Lê, Trịnh (Nam Triều) - Mạc (Bắc triều)','d',5,10);
insert into question(content,a,b,c,d,correct,subjectid,level) value ('Ai là người đã quy tụ được đông đảo các lực lượng cựu thần nhà lê chống lại nhà Mạc?','Nguyễn Hoàng','Nguyễn Kim','Lê Duy Ninh','Trịnh Kiểm','b',5,10);


select * from question;




SELECT * FROM user;

SELECT * FROM subject;

SELECT * FROM class WHERE subjectid =7;

create table test(
	id bigint not null primary key auto_increment,
    name nvarchar(100),
    classid bigint,
    testtime time,
    datestart timestamp,
    dateend timestamp
);
ALTER TABLE test ADD CONSTRAINT fk_test_class FOREIGN KEY (classid) REFERENCES class(id);

insert into test(name,classid,testtime) values('Kiểm tra 15p',5,'0:15:00');

select * from test;

create table test_question(
	id bigint not null primary key auto_increment,
    testid bigint,
    questionid bigint
);

ALTER TABLE test_question ADD CONSTRAINT fk_tq_test FOREIGN KEY (testid) REFERENCES test(id);
ALTER TABLE test_question ADD CONSTRAINT fk_tq_question FOREIGN KEY (questionid) REFERENCES question(id);

create table scores(
	id bigint not null primary key auto_increment,
    studentid bigint,
    testid bigint,
    dotimestart timestamp,
    finishtime timestamp,
    points double,
    times int default 1
);

ALTER TABLE scores ADD CONSTRAINT fk_scores_student FOREIGN KEY (studentid) REFERENCES student(id);
ALTER TABLE scores ADD CONSTRAINT fk_scores_test FOREIGN KEY (testid) REFERENCES test(id);

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_scores`(in sid bigint,in tid bigint,in p double)
BEGIN
	declare _times int;
    set @_times= (select count(times) from scores where studentid=sid and testid=tid);
	insert into scores(studentid,testid,points,times) values(sid,tid,p,@_times+1);
	
END; $$
DELIMITER ;

call insert_scores(5,1,8);
select * from scores;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_class`(
	in _name nvarchar(100) ,
    in _teacherid bigint,
    in _subjectid bigint,
    in _level int )
BEGIN
	declare _times int;
    declare _code nvarchar(20);
    set _times= (select count(teacherid) from class where teacherid=_teacherid)+1;
    set _code = (SELECT CONCAT((select s.code from subject s where s.id=_subjectid) ,
					CONVERT(_level, nchar), CONVERT(_teacherid, nchar), CONVERT(_times, nchar)));
    
    insert into class(name,code,teacherid,subjectid,level) values(_name,_code,_teacherid,_subjectid,_level);
    
    
END; $$
DELIMITER ;

call insert_class("Toán 10",1,7,10);

select *
from class;

SELECT * FROM question where level =10 ORDER BY RAND() ;

select c.id,c.name,c.code,c.status,t.name teacher,s.name subject,c.level,c.createdate,c.modifieddate
from class c join teacher t on c.teacherid = t.id
			join subject s on c.subjectid = s.id;

call class_info();



SELECT * FROM class  ORDER BY id desc limit 2 ;

INSERT INTO test_question(testid,questionid) values(1,1);
INSERT INTO test_question(testid,questionid) values(1,2);
INSERT INTO test_question(testid,questionid) values(1,3);

SELECT * FROM class WHERE name like '%toán%';

SELECT q.id qid FROM question q INNER JOIN test_question tq ON q.id=tq.questionid WHERE testid=1 ORDER BY RAND() ;



SELECT tq.id ,testid,questionid,content,a,b,c,d FROM question q INNER JOIN test_question tq ON q.id=tq.questionid WHERE testid=1 ORDER BY  RAND();

SELECT tq.id,testid,questionid,correct FROM question q INNER JOIN test_question tq ON q.id=tq.questionid;

SELECT tq.id ,testid,questionid FROM question q INNER JOIN test_question tq ON q.id=tq.questionid WHERE testid=1 ORDER BY  RAND() ;


SELECT tq.id ,testid,questionid,content,a,b,c,d FROM question q INNER JOIN test_question tq ON q.id=tq.questionid WHERE questionid = 1;



SELECT COUNT(*) FROM class WHERE subjectid = 7;

create table qs(
	id bigint primary key auto_increment,
    content text,
    A text,
    B text,
    C text,
    D text,
    CORANS text
);

SELECT id,content,a,b,c,d FROM question WHERE id = 1;


SELECT tq.id ,testid,questionid,correct FROM question q INNER JOIN test_question tq ON q.id=tq.questionid WHERE testid = 1;


