package kr.car.mapper;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.car.mapper.CMapper;

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
	
	
	
	@GetMapping("/login.do")
	public String boardList() {
		return "login";
	}


}
