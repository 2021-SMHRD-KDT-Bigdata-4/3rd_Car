package kr.car.domain;

import java.util.Date;

import lombok.Data;

@Data
public class HabitsVO {
	private int habits_id;
	private Date drowsiness_alarmtime;
	private int total_drivingtime;
	private int rest_count;
	private int alarm_count;
	private String member_id;
}
