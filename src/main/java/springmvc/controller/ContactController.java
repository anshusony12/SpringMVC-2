package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonDataController(Model m) {
		m.addAttribute("Header", "LearnCode With AnshuSony");
		m.addAttribute("Desc", "this is codding environment");
		System.out.println("adding common method to Model");
	}
	
	@RequestMapping("/contact")
	public String showForm(Model m){
		System.out.println("showing form");
		return "contact";
	}
	
	// easy and shortcut method
	@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String formHandler(@ModelAttribute("user") User user, Model model) {
		System.out.println(user);
		int createUser = this.userService.createUser(user);
		model.addAttribute("msg", "User created with id"+createUser);
		return "success";
	}
	
	// long method
//	@RequestMapping(path = "/processform", method=RequestMethod.POST)
//	public String formHandler(
//			@RequestParam("userEmail")String email, 
//			@RequestParam("userName")String name,
//			@RequestParam("userPassword")String password, 
//			Model model) {
//		
//			User user = new User();
//			user.setUserEmail(email);
//			user.setUserName(name);
//			user.setUserPassword(password);
//			System.out.println(user);
//			
////	model.addAttribute("username", name);
////		model.addAttribute("useremail", email);
////	model.addAttribute("userpassword", password);
//			model.addAttribute("user", user);	
//		return "success";
//	}

	
}
