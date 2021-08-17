package kr.car.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.car.domain.BoardVO;
import kr.car.domain.MembersVO;



//POJO
@Controller
public class BoardController {   // new BoardController(); -> Spring Container(DI)
   
   //@Autowired  //DI
   @Inject
   //@Resource("boardMapper")
   private CMapper CMapper; //SqlSessionFactorybean
   // 게시판 리스트를 가져오는 동작
   // HandlerMapping
   @GetMapping("/notice.do")
   public void boardList(Model model) {
      List<BoardVO> list = CMapper.boardList();      
       model.addAttribute("list", list);  
   }
   

   @RequestMapping("/boardForm.do")
   public void boardForm() { 
      //void -> ~.do로 찾아가라 string으로 쓰면 리턴값 주기
      // ~.do랑 jsp랑 이름 같으면 void로 가능
      //return "boardForm";  // boardForm.jsp
   }
   
   @PostMapping("/boardInsert.do")
   public String boardInsert(BoardVO vo) {
      CMapper.boardInsert(vo);
      return "redirect:/notice.do";
   }
   
   @RequestMapping("/boardContent.do")
   public void boardContent(int idx, Model model) {
      BoardVO vo = CMapper.boardContent(idx);
      model.addAttribute("vo",vo);
      //return "boardContent";
   }
   
   @RequestMapping("/boardDelete.do")
   public String boardDelete(int idx) {
      CMapper.boardDelete(idx);
      return "redirect:/notice.do"; 
   }
   
   @PostMapping("/memberInsert.do")
   public String memberInsert(MembersVO vo) {
      CMapper.memberInsert(vo);
      return "redirect:/login.do";
   }
   


   
}