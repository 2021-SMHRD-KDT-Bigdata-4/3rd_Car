package kr.car.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;
import kr.car.domain.RestsVO;
import kr.car.domain.AlarmCountVO;
import kr.car.domain.AlarmsVO;



@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

	
	//로그인 매핑
	public MembersVO loginFunction(MembersVO vo);
	
	//운전시작.종료
	public int dstart(DrivingVO vo);
	public int dend(DrivingVO vo);

	//휴식시작.종료
	public int rest_start(RestsVO vo);
	public int rest_end(RestsVO vo);
	
	//유저메인 화면 불러오기
	public List<DrivingVO> drivingList(String member_id);
    public List<RestsVO> restsList(String member_id);
    
    //차트만들기
    public List<AlarmCountVO> alarm_count(AlarmsVO vo);

}
