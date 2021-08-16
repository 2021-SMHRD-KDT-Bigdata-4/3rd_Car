package kr.car.domain;



import lombok.Data;

@Data
public class AlarmsVO {
	private int alarm_id;
	private String alarm_time;
	private String alarm_location;
	private String member_id;
	private int alarmtype_id;
	private int habit_id;
}
