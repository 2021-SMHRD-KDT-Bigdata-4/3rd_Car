package kr.car.domain;

import lombok.Data;

@Data
public class RestareasVO {
	private int area_id;
	private String area_name;
	private float latitude;
	private float longitude;
	private String facilities;
}
