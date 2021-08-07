package kr.car.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class AlarmVO {
	private int alarmid;
	private Date alarmtime;
	private String alarmlocation;

}

