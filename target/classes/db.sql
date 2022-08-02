create table pjmember(
m_id varchar2(30 char) primary key,
m_pw varchar2(30 char) not null,
m_photo varchar2(100 char) not null,
m_name varchar2(30 char) not null,
m_nickname varchar2(30 char) not null,
m_addr varchar2(50 char) not null,
m_fav varchar2(30 char) not null
);

select * from pjmember;

insert into pjmember values('aa','123','이미지','이름','기모띠','주소','선호장르');

-----------------------------------------------------------------------

