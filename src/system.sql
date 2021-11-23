----------------선생님테이블-----------------------
CREATE TABLE TEACHER_TABLE(
TEACHER_NUMBER NUMBER(5),   --선생님 사번
TEACHER_NAME VARCHAR2(20),  --선생님 이름
PRIMARY KEY(TEACHER_NUMBER) --선생님 사번 PK로
);

INSERT INTO TEACHER_TABLE VALUES(101,'김채현'); --교사 테스트 데이터1
INSERT INTO TEACHER_TABLE VALUES(102,'황정숙'); --교사 테스트 데이터2
COMMIT;

SELECT * FROM TEACHER_TABLE;
-----------------------------------------------

----------------학생테이블-----------------------
CREATE TABLE STUDENT_TABLE(
STUDENT_NUMBER NUMBER(5),
STUDENT_NAME VARCHAR2(20),
TEACHER_NUMBER NUMBER(5),
PRIMARY KEY(STUDENT_NUMBER),
FOREIGN KEY(TEACHER_NUMBER)
REFERENCES TEACHER_TABLE(TEACHER_NUMBER)
);
-----------------------------------------------

SELECT * FROM STUDENT_TABLE;

INSERT INTO STUDENT_TABLE VALUES(1,'강대현',101);
INSERT INTO STUDENT_TABLE VALUES(2,'김구민',101);
INSERT INTO STUDENT_TABLE VALUES(3,'김낙영',101);
INSERT INTO STUDENT_TABLE VALUES(4,'김혜겸',101);
INSERT INTO STUDENT_TABLE VALUES(5,'구민형',101);
INSERT INTO STUDENT_TABLE VALUES(6,'변우석',101);
INSERT INTO STUDENT_TABLE VALUES(7,'김승재',101);
INSERT INTO STUDENT_TABLE VALUES(8,'김원재',101);
INSERT INTO STUDENT_TABLE VALUES(9,'유준재',101);
INSERT INTO STUDENT_TABLE VALUES(10,'유형주',101);

INSERT INTO STUDENT_TABLE VALUES(11,'황가온',102);
INSERT INTO STUDENT_TABLE VALUES(12,'임성호',102);
INSERT INTO STUDENT_TABLE VALUES(13,'임주혁',102);
INSERT INTO STUDENT_TABLE VALUES(14,'전지훈',102);
INSERT INTO STUDENT_TABLE VALUES(15,'김정태',102);
INSERT INTO STUDENT_TABLE VALUES(16,'정희석',102);
INSERT INTO STUDENT_TABLE VALUES(17,'임지수',102);
INSERT INTO STUDENT_TABLE VALUES(18,'김지우',102);
INSERT INTO STUDENT_TABLE VALUES(19,'서한석',102);
INSERT INTO STUDENT_TABLE VALUES(20,'엄희건',102);



CREATE TABLE SCORE_TABLE(
STUDENT_NUMBER NUMBER(5),
TEACHER_NUMBER NUMBER(5),
SUBJECT VARCHAR2(20)
CHECK(SUBJECT IN('국어','영어','수학','한국사','일본어')),
TEST_TYPE VARCHAR2(20)
CHECK (TEST_TYPE IN('1학기','2학기')),
TEST_TYPE2 VARCHAR2(20)
CHECK (TEST_TYPE2 IN('중간','기말')),
STUDENT_SCORE NUMBER(4,1) CHECK (STUDENT_SCORE BETWEEN 0 AND 100),
FOREIGN KEY (STUDENT_NUMBER)
REFERENCES STUDENT_TABLE(STUDENT_NUMBER),
FOREIGN KEY(TEACHER_NUMBER)
REFERENCES TEACHER_TABLE(TEACHER_NUMBER),
TEST_DATE VARCHAR2(5)
);

INSERT INTO SCORE_TABLE VALUES(1,101,'국어','1학기','중간',100,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'국어','1학기','중간',96,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'국어','1학기','중간',80,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'국어','1학기','중간',87,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'국어','1학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'국어','1학기','중간',60,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'국어','1학기','중간',40,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'국어','1학기','중간',80,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'국어','1학기','중간',88,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'국어','1학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'국어','1학기','중간',97,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'국어','1학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'국어','1학기','중간',79,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'국어','1학기','중간',83,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'국어','1학기','중간',84,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'국어','1학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'국어','1학기','중간',94,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'국어','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'국어','1학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'국어','1학기','중간',100,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'수학','1학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'수학','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'수학','1학기','중간',91,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'수학','1학기','중간',98,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'수학','1학기','중간',100,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'수학','1학기','중간',71,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'수학','1학기','중간',51,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'수학','1학기','중간',82,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'수학','1학기','중간',91,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'수학','1학기','중간',93,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'수학','1학기','중간',97,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'수학','1학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'수학','1학기','중간',79,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'수학','1학기','중간',83,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'수학','1학기','중간',84,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'수학','1학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'수학','1학기','중간',94,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'수학','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'수학','1학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'수학','1학기','중간',100,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'영어','1학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'영어','1학기','중간',82,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'영어','1학기','중간',87,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'영어','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'영어','1학기','중간',65,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'영어','1학기','중간',43,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'영어','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'영어','1학기','중간',45,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'영어','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'영어','1학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'영어','1학기','중간',34,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'영어','1학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'영어','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'영어','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'영어','1학기','중간',34,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'영어','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'영어','1학기','중간',0,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'영어','1학기','중간',42,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'영어','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'영어','1학기','중간',21,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'한국사','1학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'한국사','1학기','중간',65,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'한국사','1학기','중간',45,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'한국사','1학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'한국사','1학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'한국사','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'한국사','1학기','중간',86,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'한국사','1학기','중간',42,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'한국사','1학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'한국사','1학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'한국사','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'한국사','1학기','중간',44,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'한국사','1학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'한국사','1학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'한국사','1학기','중간',36,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'한국사','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'한국사','1학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'한국사','1학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'한국사','1학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'한국사','1학기','중간',88,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'일본어','1학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'일본어','1학기','중간',65,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'일본어','1학기','중간',45,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'일본어','1학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'일본어','1학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'일본어','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'일본어','1학기','중간',86,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'일본어','1학기','중간',42,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'일본어','1학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'일본어','1학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'일본어','1학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'일본어','1학기','중간',44,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'일본어','1학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'일본어','1학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'일본어','1학기','중간',36,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'일본어','1학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'일본어','1학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'일본어','1학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'일본어','1학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'일본어','1학기','중간',88,'20');



INSERT INTO SCORE_TABLE VALUES(1,101,'국어','1학기','기말',30,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'국어','1학기','기말',42,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'국어','1학기','기말',64,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'국어','1학기','기말',34,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'국어','1학기','기말',75,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'국어','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'국어','1학기','기말',62,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'국어','1학기','기말',53,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'국어','1학기','기말',21,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'국어','1학기','기말',42,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'국어','1학기','기말',77,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'국어','1학기','기말',34,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'국어','1학기','기말',22,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'국어','1학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'국어','1학기','기말',65,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'국어','1학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'국어','1학기','기말',97,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'국어','1학기','기말',43,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'국어','1학기','기말',12,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'국어','1학기','기말',10,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'수학','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'수학','1학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'수학','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'수학','1학기','기말',75,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'수학','1학기','기말',87,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'수학','1학기','기말',98,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'수학','1학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'수학','1학기','기말',97,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'수학','1학기','기말',51,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'수학','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'수학','1학기','기말',12,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'수학','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'수학','1학기','기말',34,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'수학','1학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'수학','1학기','기말',21,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'수학','1학기','기말',65,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'수학','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'수학','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'수학','1학기','기말',43,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'수학','1학기','기말',16,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'영어','1학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'영어','1학기','기말',64,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'영어','1학기','기말',87,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'영어','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'영어','1학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'영어','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'영어','1학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'영어','1학기','기말',85,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'영어','1학기','기말',45,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'영어','1학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'영어','1학기','기말',65,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'영어','1학기','기말',87,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'영어','1학기','기말',98,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'영어','1학기','기말',78,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'영어','1학기','기말',67,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'영어','1학기','기말',56,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'영어','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'영어','1학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'영어','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'영어','1학기','기말',65,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'한국사','1학기','기말',65,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'한국사','1학기','기말',87,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'한국사','1학기','기말',75,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'한국사','1학기','기말',43,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'한국사','1학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'한국사','1학기','기말',12,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'한국사','1학기','기말',43,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'한국사','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'한국사','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'한국사','1학기','기말',12,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'한국사','1학기','기말',67,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'한국사','1학기','기말',97,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'한국사','1학기','기말',97,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'한국사','1학기','기말',100,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'한국사','1학기','기말',0,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'한국사','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'한국사','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'한국사','1학기','기말',12,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'한국사','1학기','기말',67,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'한국사','1학기','기말',45,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'일본어','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'일본어','1학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'일본어','1학기','기말',56,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'일본어','1학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'일본어','1학기','기말',87,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'일본어','1학기','기말',78,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'일본어','1학기','기말',98,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'일본어','1학기','기말',45,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'일본어','1학기','기말',32,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'일본어','1학기','기말',12,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'일본어','1학기','기말',34,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'일본어','1학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'일본어','1학기','기말',52,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'일본어','1학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'일본어','1학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'일본어','1학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'일본어','1학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'일본어','1학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'일본어','1학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'일본어','1학기','기말',13,'20');




INSERT INTO SCORE_TABLE VALUES(1,101,'국어','2학기','중간',100,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'국어','2학기','중간',96,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'국어','2학기','중간',80,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'국어','2학기','중간',87,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'국어','2학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'국어','2학기','중간',60,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'국어','2학기','중간',40,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'국어','2학기','중간',80,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'국어','2학기','중간',88,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'국어','2학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'국어','2학기','중간',97,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'국어','2학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'국어','2학기','중간',79,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'국어','2학기','중간',83,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'국어','2학기','중간',84,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'국어','2학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'국어','2학기','중간',94,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'국어','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'국어','2학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'국어','2학기','중간',100,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'수학','2학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'수학','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'수학','2학기','중간',91,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'수학','2학기','중간',98,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'수학','2학기','중간',100,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'수학','2학기','중간',71,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'수학','2학기','중간',51,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'수학','2학기','중간',82,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'수학','2학기','중간',91,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'수학','2학기','중간',93,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'수학','2학기','중간',97,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'수학','2학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'수학','2학기','중간',79,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'수학','2학기','중간',83,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'수학','2학기','중간',84,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'수학','2학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'수학','2학기','중간',94,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'수학','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'수학','2학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'수학','2학기','중간',100,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'영어','2학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'영어','2학기','중간',82,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'영어','2학기','중간',87,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'영어','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'영어','2학기','중간',65,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'영어','2학기','중간',43,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'영어','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'영어','2학기','중간',45,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'영어','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'영어','2학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'영어','2학기','중간',34,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'영어','2학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'영어','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'영어','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'영어','2학기','중간',34,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'영어','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'영어','2학기','중간',0,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'영어','2학기','중간',42,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'영어','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'영어','2학기','중간',21,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'한국사','2학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'한국사','2학기','중간',65,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'한국사','2학기','중간',45,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'한국사','2학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'한국사','2학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'한국사','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'한국사','2학기','중간',86,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'한국사','2학기','중간',42,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'한국사','2학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'한국사','2학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'한국사','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'한국사','2학기','중간',44,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'한국사','2학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'한국사','2학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'한국사','2학기','중간',36,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'한국사','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'한국사','2학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'한국사','2학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'한국사','2학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'한국사','2학기','중간',88,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'일본어','2학기','중간',90,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'일본어','2학기','중간',65,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'일본어','2학기','중간',45,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'일본어','2학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'일본어','2학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'일본어','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'일본어','2학기','중간',86,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'일본어','2학기','중간',42,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'일본어','2학기','중간',54,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'일본어','2학기','중간',32,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'일본어','2학기','중간',75,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'일본어','2학기','중간',44,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'일본어','2학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'일본어','2학기','중간',78,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'일본어','2학기','중간',36,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'일본어','2학기','중간',85,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'일본어','2학기','중간',23,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'일본어','2학기','중간',89,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'일본어','2학기','중간',76,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'일본어','2학기','중간',88,'20');



INSERT INTO SCORE_TABLE VALUES(1,101,'국어','2학기','기말',78,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'국어','2학기','기말',56,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'국어','2학기','기말',45,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'국어','2학기','기말',34,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'국어','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'국어','2학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'국어','2학기','기말',87,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'국어','2학기','기말',89,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'국어','2학기','기말',45,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'국어','2학기','기말',34,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'국어','2학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'국어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'국어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'국어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'국어','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'국어','2학기','기말',76,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'국어','2학기','기말',64,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'국어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'국어','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'국어','2학기','기말',75,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'수학','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'수학','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'수학','2학기','기말',13,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'수학','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'수학','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'수학','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'수학','2학기','기말',86,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'수학','2학기','기말',64,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'수학','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'수학','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'수학','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'수학','2학기','기말',58,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'수학','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'수학','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'수학','2학기','기말',13,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'수학','2학기','기말',75,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'수학','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'수학','2학기','기말',79,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'수학','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'수학','2학기','기말',35,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'영어','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'영어','2학기','기말',13,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'영어','2학기','기말',64,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'영어','2학기','기말',75,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'영어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'영어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'영어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'영어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'영어','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'영어','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'영어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'영어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'영어','2학기','기말',79,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'영어','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'영어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'영어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'영어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'영어','2학기','기말',79,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'영어','2학기','기말',80,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'영어','2학기','기말',46,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'한국사','2학기','기말',13,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'한국사','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'한국사','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'한국사','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'한국사','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'한국사','2학기','기말',79,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'한국사','2학기','기말',79,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'한국사','2학기','기말',54,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'한국사','2학기','기말',79,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'한국사','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'한국사','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'한국사','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'한국사','2학기','기말',75,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'한국사','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'한국사','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'한국사','2학기','기말',86,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'한국사','2학기','기말',64,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'한국사','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'한국사','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'한국사','2학기','기말',35,'20');

INSERT INTO SCORE_TABLE VALUES(1,101,'일본어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(2,101,'일본어','2학기','기말',53,'20');
INSERT INTO SCORE_TABLE VALUES(3,101,'일본어','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(4,101,'일본어','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(5,101,'일본어','2학기','기말',13,'20');
INSERT INTO SCORE_TABLE VALUES(6,101,'일본어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(7,101,'일본어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(8,101,'일본어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(9,101,'일본어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(10,101,'일본어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(11,101,'일본어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(12,101,'일본어','2학기','기말',46,'20');
INSERT INTO SCORE_TABLE VALUES(13,101,'일본어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(14,101,'일본어','2학기','기말',35,'20');
INSERT INTO SCORE_TABLE VALUES(15,101,'일본어','2학기','기말',24,'20');
INSERT INTO SCORE_TABLE VALUES(16,101,'일본어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(17,101,'일본어','2학기','기말',23,'20');
INSERT INTO SCORE_TABLE VALUES(18,101,'일본어','2학기','기말',68,'20');
INSERT INTO SCORE_TABLE VALUES(19,101,'일본어','2학기','기말',57,'20');
INSERT INTO SCORE_TABLE VALUES(20,101,'일본어','2학기','기말',68,'20');




COMMIT;



SELECT * FROM SCORE_TABLE;
SELECT * FROM TEACHER_TABLE;
SELECT * FROM STUDENT_TABLE;



CREATE TABLE MAIL_TABLE(
STUDENT_NUMBER NUMBER(5),
TEACHER_NUMBER NUMBER(5),
SUBJECT VARCHAR2(200),
FOREIGN KEY (STUDENT_NUMBER)
REFERENCES STUDENT_TABLE(STUDENT_NUMBER),
FOREIGN KEY(TEACHER_NUMBER)
REFERENCES TEACHER_TABLE(TEACHER_NUMBER),
M_DATE DATE
);

drop table TEACHER_TABLE;
drop table STUDENT_TABLE;
drop table SCORE_TABLE;