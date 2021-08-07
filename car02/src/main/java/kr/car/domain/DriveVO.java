package kr.car.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class DriveVO {
	private int driveid     ;
	private Date drivestart;  
	private Date driveend;
	

}
