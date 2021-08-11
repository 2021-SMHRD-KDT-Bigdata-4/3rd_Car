package kr.car.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;



@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

	
	//로그인 매핑
	public MembersVO loginFunction(MembersVO vo);
	

	public DrivingVO dstart(DrivingVO vo);
	public DrivingVO dend(DrivingVO vo);

	
	public List<DrivingVO> drivingList();


	public List<DrivingVO> restsList();

}
