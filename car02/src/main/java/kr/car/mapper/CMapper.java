package kr.car.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.car.domain.DriveVO;
import kr.car.domain.MemberVO;
import kr.car.domain.RestVO;



@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

	
	//로그인 매핑
	public MemberVO loginFunction(MemberVO vo);
	

	public DriveVO dstart(DriveVO vo);
	public DriveVO dend(DriveVO vo);

	
	public List<DriveVO> driveList();


	public List<RestVO> restList();

}
