package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ReditectController {
	
	@RequestMapping("/one")
	public String one() {
		System.out.println("redirecting one handler to two");
//		RedirectView redirectView = new RedirectView();
//		redirectView.setUrl("two");
//		return redirectView;
		return "redirect:/two";
	}
	
	@RequestMapping("/two")
	public String two() {
		System.out.println("this is second handler");
		return "contact";
	}
}
