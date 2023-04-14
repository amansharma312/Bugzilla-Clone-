package hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hello.model.Cameo;

@Controller
public class CameoController {
	
	@RequestMapping("/show")
	public String juShow() {
		return "show";
	}

}
