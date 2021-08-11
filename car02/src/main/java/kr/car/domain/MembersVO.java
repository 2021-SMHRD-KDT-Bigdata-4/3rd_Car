package kr.car.domain;

import lombok.Data;

@Data
public class MembersVO {
	private String member_id; 
	private String password;
	private String user_name;
	private String gender;
	private String company;
	private int age;
	private String member_note;
}
