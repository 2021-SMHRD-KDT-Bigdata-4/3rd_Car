package kr.car.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CMapper{ // new BMapper() --> SqlSessionFactoryBean
  // SQL-->X-->SQL Mapper File(XML)

  
  public void boardDelete(int idx); 
  
  @Delete("delete from tbl_board where idx=#{idx}")
  public int boardDeleteAjax(int idx); 

}
