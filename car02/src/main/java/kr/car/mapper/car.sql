create database sleep
show databases


DROP TABLE HABITS cascade;
DROP TABLE RESTS cascade;
DROP TABLE ALARMS  cascade;
DROP TABLE ALARMTYPES  cascade;
DROP TABLE DRIVINGS  cascade;
DROP TABLE RESTAREAS cascade;
DROP TABLE MEMBERS  cascade;

SHOW TABLES;

-- =======================테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- MEMBERS Table Create SQL
CREATE TABLE MEMBERS
(
    `MEMBER_ID`    VARCHAR(100)    NOT NULL    COMMENT '회원아이디', 
    `PASSWORD`     VARCHAR(100)    NOT NULL        COMMENT '암호', 
    `MEMBER_NAME`  VARCHAR(100)    NOT NULL        COMMENT '회원명', 
    `GENDER`       VARCHAR(1)      NOT NULL        COMMENT '성별', 
    `COMPANY`      VARCHAR(100)    NOT NULL        COMMENT '소속회사', 
    `AGE`          INT             NOT NULL        COMMENT '나이', 
    `MEMBER_NOTE`  VARCHAR(100)    NULL        COMMENT '회원메모', 
     PRIMARY KEY (MEMBER_ID)
);

ALTER TABLE MEMBERS COMMENT '회원정보';

-- RESTAREAS Table Create SQL
CREATE TABLE RESTAREAS
(
    `RESTAREA_ID`    INT             NOT NULL    AUTO_INCREMENT COMMENT '휴게소아이디', 
    `RESTAREA_NAME`  VARCHAR(100)    NULL        COMMENT '휴게소명', 
    `LATITUDE`       FLOAT           NULL        COMMENT '위도', 
    `LONGITUDE`      FLOAT           NULL        COMMENT '경도', 
    `FACILITIES`     VARCHAR(100)    NULL        COMMENT '편의시설', 
     PRIMARY KEY (RESTAREA_ID)
);

ALTER TABLE RESTAREAS COMMENT '휴게소정보';


-- DRIVINGS Table Create SQL
CREATE TABLE DRIVINGS
(
    `DRIVING_ID`         INT             NOT NULL    AUTO_INCREMENT COMMENT '운전아이디', 
    `DRIVING_STARTTIME`  DATETIME        NULL        COMMENT '운전출발시간', 
    `DRIVING_ENDTIME`    DATETIME        NULL        COMMENT '운전종료시간', 
    `MEMBER_ID`          VARCHAR(100)    NOT NULL    COMMENT '회원아이디', 
    `HABIT_ID`           INT             NULL        COMMENT '습관아이디', 
     PRIMARY KEY (DRIVING_ID)
);

ALTER TABLE DRIVINGS COMMENT '운전정보';

ALTER TABLE DRIVINGS
    ADD CONSTRAINT FK_DRIVINGS_MEMBER_ID_MEMBERS_MEMBER_ID FOREIGN KEY (MEMBER_ID)
        REFERENCES MEMBERS (MEMBER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- ALARMTYPES Table Create SQL
CREATE TABLE ALARMTYPES
(
    `ALARMTYPE_ID`    INT             NOT NULL    COMMENT '알람타입아이디', 
    `ALARMTYPE_NAME`  VARCHAR(100)    NULL        COMMENT '알람타입명', 
     PRIMARY KEY (ALARMTYPE_ID)
);

ALTER TABLE ALARMTYPES COMMENT '알람타입정보';


-- HABITS Table Create SQL
CREATE TABLE HABITS
(
    `HABIT_ID`             INT             NOT NULL    AUTO_INCREMENT COMMENT '습관아이디', 
    `DROWSINESS_ALARMTIME`  DATETIME        NULL        COMMENT '졸음알람시간', 
    `TOTAL_DRIVINGTIME`     INT             NULL        COMMENT '총운전시간', 
    `REST_COUNT`            INT             NULL        COMMENT '휴식횟수', 
    `ALARM_COUNT`           INT             NULL        COMMENT '알람횟수', 
    `MEMBER_ID`             VARCHAR(100)    NOT NULL    COMMENT '회원아이디',
    
     PRIMARY KEY (HABIT_ID)
);

ALTER TABLE HABITS COMMENT '나의운전습관정보';

ALTER TABLE HABITS
    ADD CONSTRAINT FK_HABITS_MEMBER_ID_MEMBERS_MEMBER_ID FOREIGN KEY (MEMBER_ID)
        REFERENCES MEMBERS (MEMBER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ALARMS Table Create SQL
CREATE TABLE ALARMS
(
    `ALARM_ID`        INT             NOT NULL    AUTO_INCREMENT COMMENT '알람순번', 
    `ALARM_TIME`      DATETIME        NULL        COMMENT '졸음알람시간', 
    `ALARM_LOCATION`  VARCHAR(100)    NULL        COMMENT '알람위치', 
    `MEMBER_ID`       VARCHAR(100)    NOT NULL    COMMENT '회원아이디', 
    `ALARMTYPE_ID`    INT             NOT NULL    COMMENT '알람타입아이디', 
    `HABIT_ID`        INT             NULL        COMMENT '습관아이디', 
     PRIMARY KEY (ALARM_ID)
);

ALTER TABLE ALARMS COMMENT '알람정보';

ALTER TABLE ALARMS
    ADD CONSTRAINT FK_ALARMS_ALARMTYPE_ID_ALARMTYPES_ALARMTYPE_ID FOREIGN KEY (ALARMTYPE_ID)
        REFERENCES ALARMTYPES (ALARMTYPE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ALARMS
    ADD CONSTRAINT FK_ALARMS_MEMBER_ID_MEMBERS_MEMBER_ID FOREIGN KEY (MEMBER_ID)
        REFERENCES MEMBERS (MEMBER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

--ALTER TABLE ALARMS
--    ADD CONSTRAINT FK_ALARMS_HABIT_ID_HABITS_HABIT_ID FOREIGN KEY (HABIT_ID)
--        REFERENCES HABITS (HABIT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- RESTS Table Create SQL
CREATE TABLE RESTS
(
    `REST_ID`         INT         NOT NULL    AUTO_INCREMENT COMMENT '휴식아이디', 
    `REST_STARTTIME`  DATETIME    NULL        COMMENT '휴식시작시간', 
    `REST_ENDTIME`    DATETIME    NULL        COMMENT '휴식종료시간', 
    `HABIT_ID`           INT             NULL        COMMENT '습관아이디',
    `MEMBER_ID`       VARCHAR(100)    NOT NULL    COMMENT '회원아이디',

     PRIMARY KEY (REST_ID)
);

ALTER TABLE RESTS COMMENT '휴식정보';

        
ALTER TABLE RESTS
    ADD CONSTRAINT FK_RESTS_HABIT_ID FOREIGN KEY (HABIT_ID)
        REFERENCES HABITS (HABIT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RESTS
    ADD CONSTRAINT FK_RESTS_MEMBER_ID_MEMBERS_MEMBER_ID FOREIGN KEY (MEMBER_ID)
        REFERENCES MEMBERS (MEMBER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

        
--여기서부터 데이터 넣기

INSERT INTO MEMBERS VALUES('u1','1234','박윤빈','남','스마트운수','47','');
INSERT INTO MEMBERS VALUES('11','1234','신근아','여','스마트운수','37','');
INSERT INTO MEMBERS VALUES('12','1234','고희경','여','스마트운수','27','');
INSERT INTO MEMBERS VALUES('13','1234','김성은','여','스마트운수','35','');
INSERT INTO MEMBERS VALUES('14','1234','정종원','여','스마트운수','31','');
INSERT INTO MEMBERS VALUES('15','1234','주익정','남','스마트운수','35','');
INSERT INTO MEMBERS VALUES('16','1234','정지윤','여','스마트운수','32','');
INSERT INTO MEMBERS VALUES('17','1234','최성우','남','스마트운수','33','');
INSERT INTO MEMBERS VALUES('1234','1234','최성우','남','스마트운수','33','');
INSERT INTO MEMBERS VALUES('admin','admin','김은혜','A','스마트운수','27','');
commit;


--drive 실험
insert into DRIVINGS (DRIVING_STARTTIME, MEMBER_ID) values(now(),'11');
UPDATE DRIVINGS SET DRIVING_ENDTIME = now() WHERE DRIVING_ENDTIME is null and MEMBER_ID='11';


insert into DRIVINGS (DRIVING_STARTTIME, MEMBER_ID) values(now(),'u1');
UPDATE DRIVINGS SET DRIVING_ENDTIME = now() WHERE DRIVING_ENDTIME is null and MEMBER_ID='u1';

select*from DRIVINGS;   


--rest 실험
insert into RESTS(REST_STARTTIME,  MEMBER_ID) values(now(), '11');
UPDATE RESTS SET REST_ENDTIME = now() WHERE REST_ENDTIME is null and MEMBER_ID='11';

insert into RESTS(REST_STARTTIME,  MEMBER_ID) values(now(), 'u1');
UPDATE RESTS SET REST_ENDTIME = now() WHERE REST_ENDTIME is null and MEMBER_ID='u1';

select*from RESTS;

select * from drivings; 
insert into drivings(driving_starttime,member_id) values(now(),'11');
 select * from drivings where member_id= '1234'
 
select * from drivings;


select driving_starttime, driving_endtime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d') =  DATE_FORMAT(now(),'%Y-%m-%d')
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d %h:%m:%s');
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d');
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%H:%i:%s');
        

--drive 실험
insert into DRIVINGS (DRIVING_STARTTIME, MEMBER_ID) values(now(),'11');
UPDATE DRIVINGS SET DRIVING_ENDTIME = now() WHERE DRIVING_ENDTIME is null and MEMBER_ID='11';


insert into DRIVINGS (DRIVING_STARTTIME, MEMBER_ID) values(now(),'u1');
UPDATE DRIVINGS SET DRIVING_ENDTIME = now() WHERE DRIVING_ENDTIME is null and MEMBER_ID='u1';

select*from DRIVINGS;


--rest 실험
insert into RESTS(REST_STARTTIME,  MEMBER_ID) values(now(), '11');
UPDATE RESTS SET REST_ENDTIME = now() WHERE REST_ENDTIME is null and MEMBER_ID='11';

insert into RESTS(REST_STARTTIME,  MEMBER_ID) values(now(), 'u1');
UPDATE RESTS SET REST_ENDTIME = now() WHERE REST_ENDTIME is null and MEMBER_ID='u1';

select*from RESTS;

select * from drivings; 
insert into drivings(driving_starttime,member_id) values(now(),'11');
 select * from drivings where member_id= '1234'
 
select * from drivings;

--driving list  member_id값 조건
select *from drivings right outer join members on drivings.member_id=members.member_id where members.member_id='1234'


select driving_starttime, driving_endtime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d') =  DATE_FORMAT(now(),'%Y-%m-%d')
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d %h:%m:%s');
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d');
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%H:%i:%s');
