package kr.car.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import kr.car.domain.MemberVO;






@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

	
	//로그인 매핑
	public MemberVO loginFunction(MemberVO vo);
	

	
  
  public void boardDelete(int idx); 
  
  @Delete("delete from tbl_board where idx=#{idx}")
  public int boardDeleteAjax(int idx); 

}
