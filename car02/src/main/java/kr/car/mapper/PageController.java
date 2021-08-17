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
import kr.car.domain.BoardVO;
import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;
import kr.car.domain.RestsVO;


//POJO
@Controller
public class PageController {

   @Inject
   private CMapper cMapper;
   //관리자 로그인
   @RequestMapping(value = "/adminloginAjax.do", method = RequestMethod.POST)
   public String adminloginFunction(MembersVO vo, HttpServletRequest request) {

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
      
      return "redirect:/main.do";
   }

   //유저 로그인
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
   public String dstart(String member_id) throws Exception{
      //System.out.println(member_id);      
       cMapper.dstart(member_id);             
       cMapper.after2(member_id);
       //System.out.println(member_id);
       //cMapper.alarmdata(member_id, alarmtype_id);
      return "redirect:/usermain.do";
   }
   int onecnt=0;
   int twocnt=0;
   int threecnt=0;
   @RequestMapping(value ="/alarmdata.do")
   @ResponseBody
   public String alarmdata(AlarmsVO vo, int alarmtype_id) throws Exception{
      //System.out.println(alarmtype_id);

      int num= alarmtype_id;
      
      if(num == 1 && onecnt<1) {
    	  cMapper.alarmdata(vo);
    	  onecnt++;
    	  //System.out.println("onecnt="+onecnt);
      }else if(num ==2 && twocnt<1) {
    	  cMapper.alarmdata(vo);
    	  twocnt++;
    	  //System.out.println("twocnt="+twocnt);
      }else if(num ==3 && threecnt<1) {
    	  cMapper.alarmdata(vo);
    	  threecnt++;
    	  //System.out.println("threecnt="+threecnt);
      }
      
      
      return "redirect:/usermain.do";
   }
   
   //운전종료버튼
   @RequestMapping(value ="/dend.do", method = RequestMethod.GET)
   @ResponseBody
   public int dend(DrivingVO vo)throws Exception{
      System.out.println(vo.getMember_id());
      int cnt = cMapper.dend(vo);
      return 1;
   }

   //휴식시작버튼
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
      model.addAttribute("list1", list1);
      model.addAttribute("list2", list2);
      return "useralarm";
   }
   

   @RequestMapping("/usermain.do")
     public String usermain (String member_id,  Model model) {
      
      return "usermain";
   }
   
   //운전확인 리스트 뽑아오기
   


   //알람타입별 통계
   @RequestMapping("/alarmtype_statistics.do")
   public @ResponseBody List<AlarmCountVO> alarmcount(AlarmsVO vo, Model model) {
     System.out.println(vo.toString());
      List<AlarmCountVO> dataa = cMapper.alarmcounts(vo);
      System.out.println(dataa);
      return dataa;
   }
 
   
   @RequestMapping("/main.do")
   public void main() {

   }
   @RequestMapping("/admin.do")
   public void admin() {
   }
   @RequestMapping("/adminlogin.do")
   public void adminlogin() {
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
   
   @RequestMapping("/notice.do")
   public void notice() {

   }
   
   @RequestMapping("/rest_mn.do")
   public void rest_mn() {

   }
 
   @RequestMapping("/user_mn.do")
   public void user_mn() {

   }
   
   @RequestMapping("/sleep_mn.do")
   public void sleep_mn() {

   }
 
   
   
}