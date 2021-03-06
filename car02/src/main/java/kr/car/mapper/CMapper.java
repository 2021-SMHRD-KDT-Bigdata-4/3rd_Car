package kr.car.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;
import kr.car.domain.RestsVO;
import kr.car.domain.SearchVO;
import kr.car.domain.AlarmCountVO;
import kr.car.domain.AlarmsVO;
import kr.car.domain.BoardVO;



@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

	
	//로그인 매핑
	public MembersVO loginFunction(MembersVO vo);
	
	//관리자 로그인
	public MembersVO adminloginFunction(MembersVO vo);
	
	//운전시작.
    public int dstart(String member_id);
    public int after2(String member_id);
    //setInterval
    public int alarmdata(AlarmsVO vo);

   //운전종료
	public int dend(DrivingVO vo);

	//휴식시작.종료
	public int rest_start(RestsVO vo);
	public int rest_end(RestsVO vo);
	
	//유저알람 테이블 불러오기
	public List<DrivingVO> drivingList(String member_id);
    public List<RestsVO> restsList(String member_id);
    public List<AlarmsVO> alarmsList(String member_id);
    
    //관리자 -유저 화면 불러오기
    public List<DrivingVO> admindrivingList(String member_id); 
    public List<RestsVO> adminrestsList(String member_id);
    public List<AlarmsVO> adminalarmsList(String member_id);
    
    //차트만들기
    public List<AlarmCountVO> alarm_counts(AlarmsVO vo);
    public List<AlarmCountVO> alarm_counts_admin(AlarmsVO vo);
    
    
    //회원조회
    public List<MembersVO> member_List();
    
    //회원운전기록조회
    public List<DrivingVO> addrivingList();
    
    //게시판
    public List<BoardVO> boardList();  
    public void boardInsert(BoardVO vo); //insert SQL~   
    @Select("select * from BOARD where idx=#{idx}")
    public BoardVO boardContent(int idx); // select SQL~
    
    public BoardVO user_boardContent(int idx);
    
    public void boardDelete(int idx);

    public void memberInsert(MembersVO vo);

    //운전자조회
    public List<MembersVO> boardSearch(SearchVO vo);
	

	

	

	
	
    		
}
