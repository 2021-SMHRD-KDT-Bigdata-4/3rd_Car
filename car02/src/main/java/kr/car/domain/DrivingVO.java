package kr.car.domain;

import java.util.Date;

import lombok.Data;

@Data
public class DrivingVO {
	private int driving_id;
	private Date driving_starttime;
	private Date driving_endtime;
	private String member_id;
	private int habit_id;
}
