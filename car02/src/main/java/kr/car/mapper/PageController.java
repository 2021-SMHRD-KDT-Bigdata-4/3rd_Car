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
	
	
	@GetMapping("/login.do")
	public String boardList() {
		return "login";
	}


}
