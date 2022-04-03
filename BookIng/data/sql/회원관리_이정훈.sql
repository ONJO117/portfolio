DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;

CREATE TABLE grade(
gradeNo NUMBER(2) PRIMARY KEY,
gradeName VARCHAR2(20)
);
CREATE TABLE member(
id VARCHAR2(20) PRIMARY KEY,
pw VARCHAR2(20) NOT NULL,
name VARCHAR2(30) NOT NULL,


gender VARCHAR2(6) NOT NULL CHECK (gender in('����', '����')),
birth DATE NOT NULL,
tel VARCHAR2(13),
email VARCHAR2(50) NOT NULL,
regDate DATE DEFAULT SYSDATE,
conDate DATE DEFAULT SYSDATE,
status VARCHAR2(6) DEFAULT '����' CHECK (status in ('����','����','Ż��','�޸�')) ,
photo VARCHAR2(100) default '/upload/member/noImage.png',

gradeNo NUMBER(2) DEFAULT 1 REFERENCES grade(gradeNo)
);


INSERT INTO grade VALUES(1, '�Ϲ�ȸ��');
INSERT INTO grade VALUES(9, '������');

insert into member(id, pw, name, gender, birth, tel, email, photo, gradeNo)
values('admin', '1111', '������', '����', '2000-11-25', '010-5000-0111', 'admin@naver.com', '/upload/member/admin.jpg', 9);
COMMIT;

insert into member(id, pw, name, gender, birth, tel, email, photo)
values('test', '1111', '�׽���', '����', '2000-11-25', '010-5000-0111', 'admin@naver.com', '/upload/member/test.jpg');
COMMIT;

--   2021.11.25
--- '01-DEC-1967'

INSERT INTO member(id, pw, name, gender, birth, tel, email, photo)
VALUES('roh', '1111', '�����', '����', '2000-02-03', '010-1111-1111', 'roh@naver.com','/upload/member/roh.jpg');
COMMIT;
INSERT INTO member(id, pw, name, gender, birth, tel, email, photo)
VALUES('lee', '1111', '������', '����', '2000-03-03', '010-2222-2222', 'lee@naver.com','/upload/member/lee.jpg');
COMMIT;
INSERT INTO member(id, pw, name, gender, birth, tel, email, photo)
VALUES('kim', '1111', '���ȯ', '����', '2000-04-03', '010-3333-3333', 'kim@naver.com','/upload/member/kim.jpg');
COMMIT;
INSERT INTO member(id, pw, name, gender, birth, tel, email, photo)
VALUES('baek', '1111', '�����', '����', '2000-05-03', '010-4444-4444', 'baek@naver.com','/upload/member/baek.jpg');
COMMIT;
INSERT INTO member(id, pw, name, gender, birth, tel, email, photo)
VALUES('koo', '1111', '���ڰ�', '����', '2000-06-03', '010-5555-5555', 'koo@naver.com','/upload/member/koo.jpg');
COMMIT;

select * from grade;
select * from member;