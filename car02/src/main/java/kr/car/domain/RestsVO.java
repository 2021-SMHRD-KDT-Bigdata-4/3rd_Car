package kr.car.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class RestsVO {
	private int rests_id;
	private Date rests_start;
	private Date rests_end;
	private int habit_id;
}
