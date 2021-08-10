package kr.car.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class DriveVO {
	private int driveid;
	private Timestamp drivestart;
	private Timestamp driveend;


}
