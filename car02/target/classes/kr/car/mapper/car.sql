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

SELECT * FROM BOARD;
DROP TABLE BOARD  cascade;

create table BOARD(
   idx int not null auto_increment,   -- 자동증가컬럼(1,2,3.....)
   title varchar(100) not null,
   contents varchar(4000) not null,
   writer varchar(50) not null,
   indate datetime not null default now(),
   primary key(idx)
);
  
  select * from BOARD
  select * from BOARD where DATE_FORMAT(indate,'%Y-%m-%d')
  select idx,title,contents,Date_FORMAT(indate,'%Y-%m-%d') AS indate from BOARD;
  

insert into BOARD values(1,'졸음운전 서비스 이용 안내','co-car의 졸음운전 알림 서비스를 이용하기 위해서는 사용자분들의 회원가입이 필수입니다.','관리자','2021-07-05');





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
    `DRIVING_TOTALTIME`    int        NULL        COMMENT '운전시간', 
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
select * from ALARMTYPES;
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

        
-- 알람 아이디, 알람 타입 데이터 삽입 테스트
-- 여기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
insert into alarms( ALARM_TIME,MEMBER_ID,ALARMTYPE_ID) values(now(), #{MEMBER_ID}, #{ALARMTYPE_ID});
insert into ALARMS( ALARM_TIME,MEMBER_ID,ALARMTYPE_ID) values(now(), '16', '1');
select * from alarms where member_id='16';  
select * from alarms where member_id='17'; 
select * from alarms where member_id='15';
select * from alarms where member_id='aa';

select *from drivings        
        
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
select * from ALARMS
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

select*from MEMBERS;   
select * from drivings where member_id='16';
select * from alarms where member_id='16';


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
select driving_starttime, driving_endtime,sum()from drivings, members where drivings.member_id=members.member_id and members.member_id='1234'


   <select id="chclfChart"
      resultType="kr.prison.domain.chclfChartVO"
      parameterType="kr.prison.domain.CollectiveHistoryVO">
      select
      count(case when classification='폭행치사' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case1,
      count(case when classification='폭행치상' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case2,
      count(case when classification='교도관폭행' then 1 end and case when occuring_time between  #{startDate} and #{endDate} then 1 end) as case3,
      count(case when classification='도주' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case4,
      count(case when classification='변사' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case5,
      count(case when   classification='병사' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case6,
      count(case when   classification='밀수품반입' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case7,
      count(case when   classification='기타규정위반' then 1 end and case when occuring_time between #{startDate} and #{endDate} then 1 end) as case8
      from corrective_history;
   </select>

   
-- 사용자 알림타입별 알람량
select
      count(case when ALARMTYPE_ID='1' then 1 end and case when MEMBER_ID='11' then 1 end) as '1time',
      count(case when ALARMTYPE_ID='2' then 2 end and case when MEMBER_ID='11' then 2 end) as '2times',
      count(case when ALARMTYPE_ID='3' then 3 end and case when MEMBER_ID='11' then 3 end) as '3times',
      count(case when ALARMTYPE_ID='4' then 4 end and case when MEMBER_ID='11' then 4 end) as 'rest'
      from Alarms;
      
-- 사용자 알림시간별 알람량
select
      count(case when ALARMTYPE_ID='1' then 1 end and case when DATE_FORMAT(ALARM_TIME, '%H') = '14' then 1 end )as '14시'
     
      count(case when ALARMTYPE_ID='2' then 2 end and case when MEMBER_ID='11' then 1 end) as '졸음2회알람',
      count(case when ALARMTYPE_ID='3' then 3 end and case when MEMBER_ID='11' then 1 end) as '졸음3회알람',
      count(case when ALARMTYPE_ID='4' then 4 end and case when MEMBER_ID='11' then 1 end) as '휴게알람'
      from Alarms;

      
      
-- 관리자용 알림타입별 알람량
select
      count(case when ALARMTYPE_ID='1' then 1 end and case when DATE_FORMAT(ALARM_TIME,'%Y-%m-%d') between '2021-08-15' and '2021-08-31' then 1 end ) as '졸음1회알람',
      count(case when ALARMTYPE_ID='2' then 2 end ) as '졸음2회알람',
      count(case when ALARMTYPE_ID='3' then 3 end ) as '졸음3회알람',
      count(case when ALARMTYPE_ID='4' then 4 end ) as '휴게알람'
      from Alarms;

select*from alarmtypes      
insert into alarmtypes values('1','졸음1회알람');
insert into alarmtypes values('2','졸음2회알람');
insert into alarmtypes values('3','졸음3회알람');    
insert into alarmtypes values('4','휴식알람');    
select driving_starttime, driving_endtime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d') =  DATE_FORMAT(now(),'%Y-%m-%d')
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d %h:%m:%s');
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%Y-%m-%d');
select driving_starttime from drivings where DATE_FORMAT(driving_starttime,'%H:%i:%s');

SELECT drivings, TIMESTAMPDIFF(HOUR, DRIVING_STARTTIME, driving_starttime()); 



DROP TABLE D cascade;


CREATE TABLE D
(
    `DRIVING_ID`         INT             NOT NULL    AUTO_INCREMENT COMMENT '운전아이디', 
    `DRIVING_STARTTIME`  DATETIME        NULL        COMMENT '운전출발시간', 
    `DRIVING_ENDTIME`    DATETIME        NULL        COMMENT '운전종료시간', 
    `DRIVING_TOTALTIME`    int        NULL        COMMENT '운전시간', 
    `MEMBER_ID`          VARCHAR(100)    NOT NULL    COMMENT '회원아이디', 
    `HABIT_ID`           INT             NULL        COMMENT '습관아이디', 
     PRIMARY KEY (DRIVING_ID)
);


select*from D

--사용자 운전시간 (컬럼 추가하기)
insert into D (DRIVING_STARTTIME, MEMBER_ID) values(now(),'u1');
UPDATE D SET DRIVING_ENDTIME = now() , DRIVING_TOTALTIME=TIMESTAMPDIFF(second, D.DRIVING_STARTTIME, D.DRIVING_ENDTIME) WHERE DRIVING_ENDTIME is null and MEMBER_ID='u1';
