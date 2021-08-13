package kr.car.mapper;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.car.domain.DrivingVO;
import kr.car.domain.MembersVO;
import kr.car.domain.RestsVO;

//POJO
@Controller
public class PageController {

	@Inject
	private CMapper CMapper;
	



	
	/*
	 * @RequestMapping("/usermain.do") public void
	 * usermain(@RequestParam("member_id")String member_id, Model model) {
	 * System.out.println("출력확인");
	 * 
	 * //운전확인 List<DrivingVO> list=CMapper.drivingList();
	 * model.addAttribute(member_id); model.addAttribute("list", list);
	 * System.out.println(list.get(2)); //휴식확인 List<RestsVO>
	 * restsList=CMapper.restsList(); model.addAttribute("restsList", restsList);
	 * System.out.println("휴식 출력확인"); System.out.println(list);
	 * 
	 * }
	 */
	@RequestMapping("/usermain.do")
	  public String usermain (String member_id, Model model) {
		List<DrivingVO> list1 = CMapper.drivingList(member_id);
	System.out.println(list1);
		List<RestsVO> list2 = CMapper.restsList(member_id);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "usermain";
	}

	@RequestMapping(value = "/loginAjax.do", method = RequestMethod.POST)
	public String loginFunction(MembersVO vo, HttpServletRequest request) {

		MembersVO result = CMapper.loginFunction(vo);
		System.out.println(result);

		if (result == null) {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "사용자 정보가 올바르지 않습니다.");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("MembersVO", result);
		}
		
		//System.out.println("로그인확인");
		
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
		int cnt = CMapper.dstart(vo);
		return 1;
	}
	
	//운전종료버튼
	@RequestMapping(value ="/dend.do", method = RequestMethod.GET)
	@ResponseBody
	public int dend(DrivingVO vo)throws Exception{
		System.out.println(vo.getMember_id());
		int cnt = CMapper.dend(vo);
		return 1;
	}

	//운전시작버튼
	@RequestMapping(value ="/rstart.do")
	@ResponseBody
	public int rest_start(RestsVO vo) throws Exception{
		System.out.println(vo.getMember_id());
		int cnt = CMapper.rest_start(vo);
		return 1;
	}
	
	//휴식종료버튼
	@RequestMapping(value ="/rend.do", method = RequestMethod.GET)
	@ResponseBody
	public int rest_end(RestsVO vo)throws Exception{
		System.out.println(vo.getMember_id());
		int cnt = CMapper.rest_end(vo);
		return 1;
	}
	
	
	
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
	@RequestMapping("/useralarm.do")
	public void useralarm1() {
	}
	
	
	
	
}
