-- ��ü �����
drop table image CASCADE CONSTRAINTS;
drop SEQUENCE image_seq;

-- ��ü ����
create table image (
no Number PRIMARY KEY,
title VARCHAR2(300) not null,
content VARCHAR2(2000) not null,
id VARCHAR2(20) not null references member(id),
writeDate date default sysdate,
fileName VARCHAR2(50) not null
);

create SEQUENCE image_seq;

insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����','����','test','/upload/image/001.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����2','����2','admin','/upload/image/002.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����3','����3','test','/upload/image/003.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����4','����4','test','/upload/image/004.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����5','����5','test','/upload/image/005.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����6','����6','test','/upload/image/006.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����7','����7','test','/upload/image/007.jpg');
insert into image(no, title, content, id, fileName)
values(image_seq.nextval, '����8','����8','test','/upload/image/008.jpg');
commit;


select * from image;