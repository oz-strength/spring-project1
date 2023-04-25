create table myboard(
idx number not null,
memID varchar(20) not null,
title varchar2(100) not null,
content varchar2(2000) not null,
writer varchar2(30) not null,
indate date default sysdate,
count number default 0,
primary key(idx)
);
create sequence myboard_idx;
drop sequence myboard_idx;

drop table myboard cascade constraints;

insert into myboard(idx, title, content, writer)
values(myboard_idx.nextval, '스프링게시판','스프링게시판','관리자');
insert into myboard(idx, title, content, writer)
values(myboard_idx.nextval, '스프링게시판','스프링게시판','박매일');

select * from myboard order by idx desc;

create table mem_tbl(
	memIdx number not null,
	memID varchar(20) not null,
	memPassword varchar(20) not null,
	memName varchar(20) not null,
	memAge int,
	memGender varchar(20),
	memEmail varchar(50),
	memProfile varchar(50),
	primary key(memIdx)
);
create sequence mem_tbl_memIdx;
drop sequence mem_tbl_memIdx;

select * from mem_tbl;
drop table mem_tbl cascade constraints;