package kr.car.mapper;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.car.domain.MemberVO;

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

	@RequestMapping("/login.do")
	public void login() {

	}

	@RequestMapping(value = "/loginAjax.do", method = RequestMethod.POST)
	public String loginFunction(MemberVO vo, HttpServletRequest request) {

		MemberVO result = CMapper.loginFunction(vo);

		if (result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("MemberVO", result);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "사용자 정보가 올바르지 않습니다.");
		}
		return "usermain";
	}
	
	//로그아웃
	@RequestMapping(value ="/logoutAjax.do", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			 session.invalidate();
			 return "login";
			 
		}



}
