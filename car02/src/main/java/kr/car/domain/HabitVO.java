package kr.car.domain;

import lombok.Data;

@Data
public class HabitVO {

	private String habitid;
	private int sleepalarmtime;
	private int drivetime;
	private int restcount;
	private int alarmcount;
}
