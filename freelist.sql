
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

commit;

select * from freelist;
select * from freelist where fno=1;
update freelist set fview = fview + 1 where fno=1;
select * from jspbbs;

desc jspbbs;

SELECT * FROM (SELECT ROWNUM num, sub.*
FROM (SELECT * FROM freelist ORDER BY fno DESC) sub)
 WHERE fno >= ? AND fno <= ?;