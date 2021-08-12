package kr.car.domain;

import java.sql.Timestamp;
import java.util.Date;

import lombok.Data;

@Data
public class DrivingVO {
	private int driving_id;
	private Timestamp driving_starttime;
	private Timestamp driving_endtime;
	private String member_id;
	private int habit_id;
}
