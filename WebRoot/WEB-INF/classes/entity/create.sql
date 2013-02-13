use cxx;

drop table  if exists video;
create table video(id int(4) primary key auto_increment,
name varchar(45),
haveSe int(2),
haveEp int(2),
watchedSe int(2),
watchedEp int(2),
newestSe int(2),
newestEp int(2),
rate int(1),
watchUrl varchar(200),
downloadUrl varchar(200),
filePath varchar(200),
modifyDate DateTime);

insert into  video(modifyDate) values("2012-01-01 13:12:12");
insert into  video(modifyDate) values("2012-01-02 13:12:12");
select * from video order by modifyDate desc;

select id,name,haveSe,haveEp,watchedSe,watchedEp,newestSe,newestEp,rate,watchUrl,downloadUrl,filePath,modifyDate from video order by name desc

update video set currSe=12 ,currEp=12,doneSe=12,doneEp=12,newestSe=12,newestEp=12,rate=2 where id =7;

help DateTime


select id,name,haveSe,haveEp,watchedSe,watchedEp,newestSe,newestEp,rate,watchUrl,downloadUrl,filePath,modifyDate 
from video order by name desc



delete  from video where id =20;
