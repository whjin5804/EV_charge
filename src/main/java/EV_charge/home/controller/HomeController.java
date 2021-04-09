package EV_charge.home.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import EV_charge.home.service.HomeService;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

	@Resource(name = "homeService")
	HomeService homeService;
	
	@GetMapping("/first")
	public String goHome() {
		
		return "/home";
	}
}
