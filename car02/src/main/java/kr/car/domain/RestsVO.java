package kr.car.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class RestsVO {
	private int rests_id;
	private Date rest_startime;
	private Date rest_endtime;
	private int habit_id;
}
