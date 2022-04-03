DROP TABLE board CASCADE CONSTRAINTS;
DROP SEQUENCE board_seq;

CREATE TABLE board(
  no NUMBER PRIMARY KEY,
  title VARCHAR2 (300) NOT NULL,
  content VARCHAR2 (2000) NOT NULL,
  writer VARCHAR2 (30) NOT NULL,
  writeDate DATE DEFAULT SYSDATE,
  hit NUMBER DEFAULT 0
);

CREATE SEQUENCE board_seq;

INSERT INTO board(no, title, content, writer, pw)
VALUES(board_seq.NEXTVAL, '�׽�Ʈ?', '�׽�Ʈ', 'baik', '1111');
INSERT INTO board(no, title, content, writer, pw)
VALUES(board_seq.NEXTVAL, '�׽�Ʈ1?', '�׽�Ʈ', 'baik', '1111');
INSERT INTO board(no, title, content, writer, pw)
VALUES(board_seq.NEXTVAL, '�׽�Ʈ2?', '�׽�Ʈ', 'baik', '1111');
INSERT INTO board(no, title, content, writer, pw)
VALUES(board_seq.NEXTVAL, '�׽�Ʈ3?', '�׽�Ʈ', 'baik', '1111');
INSERT INTO board(no, title, content, writer, pw)
VALUES(board_seq.NEXTVAL, '�׽�Ʈ4?', '�׽�Ʈ', 'baik', '1111');
INSERT INTO board(no, title, content, writer, pw)
VALUES(board_seq.NEXTVAL, '�׽�Ʈ5?', '�׽�Ʈ', 'baik', '1111');


DELETE board 
WHERE no = 44;
COMMIT;

-- ������ Ȯ��
SELECT * FROM  board;