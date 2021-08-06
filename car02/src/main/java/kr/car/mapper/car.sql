create database sleep
show databases

DROP TABLE alarm cascade;
DROP TABLE alarmtype cascade;
DROP TABLE rest  cascade;
DROP TABLE restarea  cascade;
DROP TABLE drive cascade;
DROP TABLE habit cascade;
DROP TABLE member  cascade;


CREATE TABLE alarm (
    alarmid        int NOT NULL auto_increment,
    alarmtime      DATE NOT NULL,
    alarmlocation  VARCHAR(30) NOT NULL,
    memberid       VARCHAR(50) NOT NULL,
    alarmtpyeid    VARCHAR(30) NOT NULL,
    habitid        VARCHAR(20) NOT NULL,
    primary key(alarmid)
);

CREATE TABLE alarmtype (
    alarmtpyeid    VARCHAR(30) NOT NULL,
    alarmtpyename  VARCHAR(30) NOT NULL
);

ALTER TABLE alarmtype ADD CONSTRAINT alarmtype_pk PRIMARY KEY ( alarmtpyeid );

CREATE TABLE drive (
    driveid     int NOT NULL auto_increment,
    drivestart  datetime NOT NULL default now(),
    driveend    datetime,
    memberid    VARCHAR(50) NOT NULL,
    habitid     VARCHAR(20) NOT NULL,
    primary key(driveid)
);



CREATE TABLE habit (
    habitid         VARCHAR(30) NOT NULL,
    sleepalarmtime  VARCHAR(30),
    sleeptime       VARCHAR(30),
    restcount       int,
    alarmcount     int,
    primary key(habitid)
);


CREATE TABLE member (
    memberid  VARCHAR(50) NOT NULL,
    password  VARCHAR(50) NOT NULL,
    username  VARCHAR(50) NOT NULL,
    gender   int  NOT NULL,
    company   VARCHAR(50) NOT NULL,
    age       int NOT NULL
);

ALTER TABLE member ADD CONSTRAINT member_pk PRIMARY KEY ( memberid );

CREATE TABLE rest (
    restid     int NOT NULL auto_increment,
    reststart  datetime NOT NULL default now(),
    restend    datetime,
    driveid    int NOT NULL,
    primary key(restid)
);


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
