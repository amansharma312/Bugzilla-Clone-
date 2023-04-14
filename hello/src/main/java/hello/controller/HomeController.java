package hello.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import hello.model.Cameo;

@Controller
public class HomeController {
	
	

	@RequestMapping("/filebug")
	public String fileBug(Model model) {
		model.addAttribute("property", "hidden");
		return "bug";
	}

	
}