package kr.car.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class RestsVO {
	private int rest_id;
	private String rest_starttime;
	private String rest_endtime;
	private int habit_id;
	private String member_id; 
}
