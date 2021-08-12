package kr.car.domain;




import lombok.Data;

@Data
public class DrivingVO {
	private int driving_id;
	private String driving_starttime;
	private String driving_endtime;
	private String member_id;
	private int habit_id;
	
}
