
drop table freelist;

create table freelist(
    fno number primary key ,
    fid varchar2(30) not null,
    ftitle varchar2(100) not null,
    fcontent varchar2(300) not null,
    fdate timestamp(6) not null,
    ffile varchar2(300) ,
    fview number default 0 ,
    fgood number default 0
);

DROP SEQUENCE freelist_seq;
CREATE SEQUENCE freelist_seq;

insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이','안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이헤이','안녕하세요! 반갑습니다',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이요','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이요','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이요','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이요','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','디','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','씨','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','에이','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','비','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','아이','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin','헤이요11','ㅎㅎ안녕하세요',SYSDATE );
insert into freelist(fno,fid,ftitle,fcontent,fdate) values(freelist_seq.NEXTVAL,'admin2','헤이요1','ㅎㅎ안녕하세요',SYSDATE );


commit;

select * from freelist;
select * from freelist where fno=1;
update freelist set fview = fview + 1 where fno=1;
select * from jspbbs;

desc jspbbs;
desc freelist;
UPDATE freelist SET fid='헤이요22', ftitle='ㅎㅇ요', fcontent='안녕요',fdate=SYSDATE , ffile=''  WHERE fno=5;

SELECT * FROM (SELECT ROWNUM num, sub.*
FROM (SELECT * FROM freelist ORDER BY fno DESC) sub)
 WHERE num >= 1 AND num <= 10;
 
 select * from reply;
 
 
 SELECT COUNT(*) FROM freelist where ftitle LIKE '%'|| '이요1' || '%';
 
 
 
 
 drop table fr_reply;

create table fr_reply(
    c_no number primary key ,
    fno number not null,
    m_id varchar2(30) not null,
    c_con varchar2(100) not null,
    fdate timestamp(6) not null
);

DROP SEQUENCE fr_reply_seq;
CREATE SEQUENCE fr_reply_seq;

insert into fr_reply values(fr_reply_seq.NEXTVAl,33,'admin','ㅎㅇ',SYSDATE);
insert into fr_reply values(fr_reply_seq.NEXTVAl,33,'admin','ㅂㅇ',SYSDATE);
insert into fr_reply values(fr_reply_seq.NEXTVAl,33,'admin','ㅇㅇ',SYSDATE);
insert into fr_reply values(fr_reply_seq.NEXTVAl,33,'admin','이이',SYSDATE);
insert into fr_reply values(fr_reply_seq.NEXTVAl,33,'admin','오이',SYSDATE);
insert into fr_reply values(fr_reply_seq.NEXTVAl,33,'admin','아유',SYSDATE);
 commit;
 
 select * from reply where bbs_no= 200 order by no desc;  
 select * from reply;
  select * from fr_reply where fno=33;
  delete from fr_reply where c_no=21;
 desc reply;
 select * from fr_reply where fno=3;
 