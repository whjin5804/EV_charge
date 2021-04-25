package EV_charge.intro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/intro")
public class IntroController {
	
	
	//전기차 소개
	@GetMapping("/introEvCar")
	public String introEvCar(@RequestParam(name = "sideMenu", required = false, defaultValue = "11") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		return "side/intro/intro_evCar";
	}
	
	
	//전기차 보급목적(환경적 측면)
	@GetMapping("/supplyGoal")
	public String supplyGoal(@RequestParam(name = "sideMenu", required = false, defaultValue = "12") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		return "side/intro/supply_goal";
	}
	//경제적측면
	@GetMapping("/supplyEco")
	public String supplyEco(@RequestParam(name = "sideMenu", required = false, defaultValue = "12") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		return "side/intro/supply_goal_eco";
	}
	//산업적측면
	@GetMapping("/supplyIndus")
	public String supplyIndus(@RequestParam(name = "sideMenu", required = false, defaultValue = "12") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		return "side/intro/supply_goal_indus";
	}
	
	
	
	
	//전기차 충전정보
	@GetMapping("/chargeInfo")
	public String chargeInfo(@RequestParam(name = "sideMenu", required = false, defaultValue = "13") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		return "side/intro/charge_info";
	}
	
	
	
	
	
	
	
	
}
