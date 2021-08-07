create database sleep
show databases

DROP TABLE alarm cascade;
DROP TABLE alarmtype cascade;
DROP TABLE rest  cascade;
DROP TABLE restarea  cascade;
DROP TABLE drive cascade;
DROP TABLE habit cascade;
DROP TABLE member  cascade;


--알람종류
CREATE TABLE alarmtype (
    alarmtpyeid    VARCHAR(30) NOT NULL,
    alarmtpyename  VARCHAR(30) NOT NULL
);

ALTER TABLE alarmtype ADD CONSTRAINT alarmtype_pk PRIMARY KEY ( alarmtpyeid );

--회원
CREATE TABLE member (
    memberid  VARCHAR(50) NOT NULL,
    password  VARCHAR(50) NOT NULL,
    username  VARCHAR(50) NOT NULL,
    gender   int  NOT NULL,
    company   VARCHAR(50) NOT NULL,
    age       int NOT NULL
);

ALTER TABLE member ADD CONSTRAINT member_pk PRIMARY KEY ( memberid );



--알람
CREATE TABLE alarm (
    alarmid        int NOT NULL auto_increment,
    alarmtime      DATE NOT NULL,
    alarmlocation  VARCHAR(30) NOT NULL,
    memberid       VARCHAR(50) NOT NULL,
    alarmtpyeid    VARCHAR(30) NOT NULL,
    habitid        VARCHAR(20) NOT NULL,
    primary key(alarmid)
);



---운전
CREATE TABLE drive (
    driveid     int NOT NULL auto_increment,
    drivestart  datetime NOT NULL default now(),
    driveend    datetime,
    memberid    VARCHAR(50) NOT NULL,
    habitid     VARCHAR(20) NOT NULL,
    primary key(driveid)
);




-- 휴식
CREATE TABLE rest (
    restid     int NOT NULL auto_increment,
    reststart  datetime NOT NULL default now(),
    restend    datetime,
    driveid    int NOT NULL,
    primary key(restid)
);


-- 평균
CREATE TABLE habit (
    habitid         VARCHAR(30) NOT NULL,
    sleepalarmtime  int,
    drivetime       int,
    restcount       int,
    alarmcount     int,
    primary key(habitid)
);



-- 휴게소
CREATE TABLE restarea (
    areaid      VARCHAR(20) NOT NULL,
    areaname    VARCHAR(30) NOT NULL,
    latitude    FLOAT NOT NULL,
    longitude   FLOAT NOT NULL,
    facilities  VARCHAR(20) NOT NULL
);

ALTER TABLE restarea ADD CONSTRAINT restarea_pk PRIMARY KEY ( areaid );

ALTER TABLE alarm
    ADD CONSTRAINT alarm_alarmtype_fk FOREIGN KEY ( alarmtpyeid )
        REFERENCES alarmtype ( alarmtpyeid );



ALTER TABLE alarm
    ADD CONSTRAINT alarm_member_fk FOREIGN KEY ( memberid )
        REFERENCES member (memberid);


ALTER TABLE drive
    ADD CONSTRAINT drive_member_fk FOREIGN KEY ( memberid )
        REFERENCES member ( memberid );

ALTER TABLE rest
    ADD CONSTRAINT rest_drive_fk FOREIGN KEY ( driveid )
        REFERENCES drive ( driveid );

        
        ALTER TABLE drive
    ADD CONSTRAINT drive_habit_fk FOREIGN KEY ( habitid )
        REFERENCES habit( habitid );
        
        ALTER TABLE alarm
    ADD CONSTRAINT alarm_habit_fk FOREIGN KEY ( habitid )
        REFERENCES habit ( habitid );

        
        
        
        
----- 인서트문

        

-- 회원 넣기

insert into member values('s0156','1234','박윤빈','1','스마트운수','47');
insert into member values('s0157','1234','노현규','1','스마트운수','33');
insert into member values('i0157','1234','최성우','1','인재운수','57');
insert into member values('i0156','1234','김미희','2','인재운수','25');

insert into member values('s0000','1234','스마트운수','3','스마트운수','0');
insert into member values('i0000','1234','인재운수','3','인재운수','0');


--휴게소(T:화장실,

insert into restarea  values('r0001','담양','35.26094744','126.9713374','T');
insert into restarea  values('r0002','광산','35.22389894','126.8269021','T');



-- 알람종류

insert into alarmtype values('1','졸음알림');
insert into alarmtype values('2','휴식알림');
insert into alarmtype values('3','졸음지속알림');
        
