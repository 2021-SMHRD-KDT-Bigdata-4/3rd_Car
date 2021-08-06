package kr.car.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//POJO
@Controller
public class PageController {

	@GetMapping("/login.do")
	public String boardList() {
		return "login";
	}

	@GetMapping("/index.do")
	public String indexList() {
		return "index";
	}


	

}
