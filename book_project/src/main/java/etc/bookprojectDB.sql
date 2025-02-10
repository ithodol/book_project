drop database if exists book0210;
create database book0210;
use book0210;

create table book(
	no int auto_increment,
    name varchar(50),
    writer varchar(20),
    creator varchar(50),
    cdate datetime default now(),
    udate datetime default now(),
    constraint primary key (no)
);

insert into book(name, writer, creator) values('채식주의자', '한강', '창비');
insert into book(name, writer, creator) values('급류', '정대건', '민음사');
insert into book(name, writer, creator) values('포스트맨은 벨을 두 번 울린다', '제임스.M.케인', '민음사');
insert into book(name, writer, creator) values('사랑은 무한대이외다', '김명순', '핀드');
insert into book(name, writer, creator) values('치치새가 사는 숲', '장진영', '민음사');
insert into book(name, writer, creator) values('SQL 자격검정 실전문제', '한국데이터산업진흥원', '한국데이터산업진흥원');
insert into book(name, writer, creator) values('모순', '양귀자', '쓰다');
insert into book(name, writer, creator) values('초록의 어두운 부분', '조용미', '문학과지성사');

select * from book;