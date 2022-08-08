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

create table animation(
a_no number(5) primary key,
a_title varchar2(300 char) not null,
a_txt varchar2(500 char) not null,
a_photo varchar2(300 char) not null,
a_genre varchar2(300 char) not null
);

select * from animation;

create sequence animation_seq;

insert into animation values(animation_seq.nextval,'SF','내용','사진','SF');
insert into animation values(animation_seq.nextval,'로맨스','내용','사진','로맨스');
insert into animation values(animation_seq.nextval,'액션','내용','사진','액션');
insert into animation values(animation_seq.nextval,'스릴러','내용','사진','스릴러');

delete animation where a_no = 19;

-------------------------------------------------------------------

create table a_review(
r_no number(5) primary key,
r_writer varchar2(300 char) not null,
r_photo varchar2(300 char) not null,
r_title varchar2(300 char) not null,
r_txt varchar2(300 char) not null,
r_date date not null
);

create sequence a_review_seq;

select * from a_review;

insert into a_review values(a_review_seq.nextval,'작성자','사진','제목','내용',sysdate);
insert into a_review values(a_review_seq.nextval,'작성자2','사진','제목','내용',sysdate);
insert into a_review values(a_review_seq.nextval,'작성자3','사진','제목','내용',sysdate);

------------------------------------------------------------------------

create table a_community(
c_no number(5) primary key,
c_writer varchar2(300 char) not null,
c_title varchar2(300 char) not null, 
c_txt varchar2(300 char) not null,
c_photo varchar2(300 char) not null,
c_date date not null
);

create sequence a_community_seq;

select * from a_community;

insert into a_community values(a_community_seq.nextval,'작성자','제목','내용','사진',sysdate);
insert into a_community values(a_community_seq.nextval,'작성자','제목1','내용1','사진',sysdate);
insert into a_community values(a_community_seq.nextval,'작성자','제목2','내용2','사진',sysdate);














