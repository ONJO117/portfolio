-- ��ü ����
drop table notice CASCADE CONSTRAINTS;
drop SEQUENCE notice_seq;

create table notice(
no number PRIMARY key,
title varchar2(300) not null,
content varchar2(2000) not null,
startDate date default sysdate,
endDate date default '9999-12-30',
wrriteDate date default sysdate,
updateDate date default sysdate);

create sequence notice_seq;

-- ���õ����� - ���� ��¥ : 2021.12.27
-- ���� ���� - 2021�� ��ź�� �̺�Ʈ - 2021.11.25 ~ 2021.12.25
insert into notice(no, title, content, startDate, endDate)
values (notice_seq.nextval, '����','���� �������','2022-01-30','2022-02-25');

-- ���� ���� - 2022�� ���� �޽��� �̺�Ʈ - 2021.12.01 ~ 2022.01.07
insert into notice(no, title, content, startDate, endDate)
values (notice_seq.nextval, '����','�̹� ���� �̺�Ʈ','2021-12-01','2022-01-07');

-- ���� ���� - 2022�� ���� - 2022.03.15 ~ 2022.03.30
insert into notice(no, title, content, startDate, endDate)
values (notice_seq.nextval, '����','���߿� �� �̺�Ʈ','2022-03-15','2022-03-30');
commit;

select * from notice;