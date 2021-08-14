package kr.car.mapper;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.car.domain.AlarmCountVO;
import kr.car.domain.AlarmsVO;
import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;
import kr.car.domain.RestsVO;

//POJO
@Controller
public class PageController {

   @Inject
   private CMapper cMapper;
   

   @RequestMapping("/usermain.do")
     public String usermain () {
      
      return "usermain";
   }

   @RequestMapping(value = "/loginAjax.do", method = RequestMethod.POST)
   public String loginFunction(MembersVO vo, HttpServletRequest request) {

      MembersVO result = cMapper.loginFunction(vo);
      System.out.println(result);
      HttpSession session = request.getSession();
      if (result == null) {
         
         session.setAttribute("msg", "사용자 정보가 올바르지 않습니다.");
      } else {
         session = request.getSession();
         session.setAttribute("MembersVO", result);
      }
      
      System.out.println("로그인확인");
      
      return "redirect:/usermain.do";
   }
   
   //로그아웃
   @RequestMapping(value ="/logoutAjax.do", method = RequestMethod.GET)
      public String logout(HttpSession session) {
          session.invalidate();
          return "login";
          
      }
   
   //운전시작버튼
   @RequestMapping(value ="/dstart.do")
   @ResponseBody
   public int dstart(DrivingVO vo) throws Exception{
      System.out.println(vo.getMember_id());
      int cnt = cMapper.dstart(vo);
      return 1;
   }
   
   //운전종료버튼
   @RequestMapping(value ="/dend.do", method = RequestMethod.GET)
   @ResponseBody
   public int dend(DrivingVO vo)throws Exception{
      System.out.println(vo.getMember_id());
      int cnt = cMapper.dend(vo);
      return 1;
   }

   //운전시작버튼
   @RequestMapping(value ="/rstart.do")
   @ResponseBody
   public int rest_start(RestsVO vo) throws Exception{
      System.out.println(vo.getMember_id());
      int cnt = cMapper.rest_start(vo);
      return 1;
   }
   
   //휴식종료버튼
   @RequestMapping(value ="/rend.do", method = RequestMethod.GET)
   @ResponseBody
   public int rest_end(DrivingVO vo)throws Exception{
      System.out.println(vo.getMember_id());
      int cnt = cMapper.dend(vo);
      return 1;
   }
   
   //유저
   @RequestMapping("/useralarm.do")
   public String useralarm1(String member_id, Model model) {
	   
      List<DrivingVO> list1 = cMapper.drivingList(member_id);
      List<RestsVO> list2 = cMapper.restsList(member_id);
      model.addAttribute("list1", list1);  //add=> container session=브라우저
      model.addAttribute("list2", list2);
      return "useralarm";
   }
   
//   //알람별 통계
//   @RequestMapping("/choosedate.do")
//   public @ResponseBody void weekshow (Model model ,AlarmCountVO vo) {
//	   vo.getAlarmStart() = cMapper.drivingList(member_id);
//	   
//	   
//	   
//   }
//   
//   @RequestMapping("/alarm_count.do")
//   public  @ResponseBody AlarmCountVO (AlarmsVO vo, Model model){
//	   System.out.println(vo.alarmStart());
//	   AlarmCountVO data1 = cMapper.alarm_count();
//	   data1.set
//	 return  
//   }
   
//   @RequestMapping("/corrective_history_clfchart.do")
//   public @ResponseBody chclfChartVO corrective_history_clfchart(CollectiveHistoryVO vo, Model model) {
//      System.out.println(vo.getStartDate());
//      chclfChartVO data1 = prisonMapper.chclfChart(vo);
//      data1.setStartDate(String.valueOf(vo.getStartDate()));-date차트제목
//      data1.setEndDate(String.valueOf(vo.getEndDate()));
//      System.out.println(data1);
//      return data1;
   			//DriveVO driveVO = cMapper.
//   }

 
   
   @RequestMapping("/main.do")
   public void main() {

   }
   @RequestMapping("/admin.do")
   public void admin() {
   }

   @RequestMapping("/basic1.do")
   public void basic1() {
   }

   @RequestMapping("/basic2.do")
   public void basic2() {
   }

   @RequestMapping("/basic3.do")
   public void basic3() {
   }

   @RequestMapping("/register.do")
   public void register() {
   }

   @RequestMapping("/table.do")
   public void table() {  
   } 
   @RequestMapping("/information.do")
   public void information() {
   }
   @RequestMapping("/setting.do")
   public void setting() {
   }
   @RequestMapping("/login.do")
   public void login() {

   }

 
   
   
}