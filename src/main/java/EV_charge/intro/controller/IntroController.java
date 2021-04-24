package EV_charge.intro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/intro")
public class IntroController {
	
	@GetMapping("/introEvCar")
	public String introEvCar(@RequestParam(name = "sideMenu", required = false, defaultValue = "1") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		return "side/intro/intro_evCar_side";
	}
}
