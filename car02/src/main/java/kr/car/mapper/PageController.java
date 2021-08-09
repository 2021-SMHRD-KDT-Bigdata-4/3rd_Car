package kr.car.mapper;


import java.util.List;

import javax.inject.Inject;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.car.domain.MemberVO;
import kr.car.mapper.CMapper;

//POJO
@Controller
public class PageController {
	
	@Inject 
	private CMapper CMapper;

	@RequestMapping("/main.do")
	public void main() {
		
	}
	
	
	@RequestMapping("/login.do")
	public  void login() {
	
	}
	
	@RequestMapping(value = "/loginFunction.do", method = RequestMethod.POST)
	public String loginUser(MemberVO vo, Model model, HttpSession session) {

		List<MemberVO> result= CMapper.loginFunction(vo);
		
		if(result==null){
			model.addAttribute("message","ID나PW가 틀립니다.");
			return "login";
		}else{
			session.setAttribute("loginId", vo.getMemberid());
			return "main.do";
		}

}


}
