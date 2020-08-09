package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.Students;

@Controller
public class FormController {
	@RequestMapping("/complex")
	public String show_form() {
		return "complex";
	}
	
	@RequestMapping(path = "/handler", method = RequestMethod.POST)
	public String processing(@ModelAttribute("student") Students student, BindingResult result) {
		if(result.hasErrors()) {
			return "complex";
		}
		System.out.println(student);
		System.out.println(student.getAddress());
		return "done";
	}
}
