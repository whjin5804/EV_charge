package EV_charge.service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class ServiceController {

	
	@GetMapping("/reserveMap")
	public String reserveMap() {
		
		
		return "service/reserve_map";
	}
	
}
