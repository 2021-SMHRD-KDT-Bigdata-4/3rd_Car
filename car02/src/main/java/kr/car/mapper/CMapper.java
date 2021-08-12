package kr.car.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;
import kr.car.domain.RestsVO;



@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

	
	//로그인 매핑
	public MembersVO loginFunction(MembersVO vo);
	
	//운전시작.종료
	public int dstart(DrivingVO vo);
	public DrivingVO dend(DrivingVO vo);

	
	//유저메인 화면 불러오기
	public List<DrivingVO> drivingList();
    public List<RestsVO> restsList();

}
