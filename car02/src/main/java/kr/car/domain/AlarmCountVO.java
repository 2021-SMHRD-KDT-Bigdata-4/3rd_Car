package kr.car.domain;



import lombok.Data;

@Data
public class AlarmCountVO {
    
    private int sleep_1times;
	private int sleep_2times;
	private int sleep_3times;
	private int rest_alarm;
	private String alarmStart;
	private String alarmEnd;
}
