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

import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;

//POJO
@Controller
public class PageController {

	@Inject
	private CMapper CMapper;
	

	@RequestMapping("/main.do")
	public void main() {

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
	@RequestMapping("/useralarm1.do")
	public void useralarm1() {
	}
	
	@RequestMapping("/usermain.do")
	public void usermain(Model model) {
		//System.out.println("1");
		   List<DrivingVO> list=CMapper.drivingList(); 		
		   model.addAttribute("list", list); // 객체바인딩->ModelAndView->Model(*)
		   //return "boardList"; //  -->ViewResolver--->/WEB-INF/views/boardList.jsp
		   System.out.println("2");		   
	}

	@RequestMapping(value = "/loginAjax.do", method = RequestMethod.POST)
	public String loginFunction(MembersVO vo, HttpServletRequest request) {

		MembersVO result = CMapper.loginFunction(vo);

		if (result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("MembersVO", result);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "사용자 정보가 올바르지 않습니다.");
		}
		return "redirect:/usermain.do";
	}
	
	//로그아웃
	@RequestMapping(value ="/logoutAjax.do", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			 session.invalidate();
			 return "login";
			 
		}
		/*
		 * @GetMapping("/driveList.do") public void driveList(Model model) {
		 * System.out.println("1"); List<DriveVO> list=CMapper.driveList();
		 * model.addAttribute("list", list); // 객체바인딩->ModelAndView->Model(*) //return
		 * "boardList"; // -->ViewResolver--->/WEB-INF/views/boardList.jsp
		 * System.out.println("2"); }
		 */
	
		/*
		 * @PostMapping("/dstart.do") public String dstart(DriveVO vo) { // 파라메터수집(자동)->
		 * new BoardVO(); CMapper.dstart(vo); return "redirect:/usermain.do"; }
		 */
	
	@RequestMapping(value ="/dstart.do")
	@ResponseBody
	public String dstart(DrivingVO vo) throws Exception{
		System.out.println(vo.getDriving_id());
		return "driveid="+ vo.getDriving_id() +"," +"drivestart="+vo.getDriving_starttime();
	}
	
	@RequestMapping(value ="/dend.do", method = RequestMethod.GET)
	public String dend(DrivingVO vo) {
		CMapper.dend(vo);
		return "redirect:/usermain.do";
	}
	
	
	
}
