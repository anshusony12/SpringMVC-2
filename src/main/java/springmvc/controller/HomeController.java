package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/first")
public class HomeController {
	
	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("name", "Anshu Sony");
		model.addAttribute("id",5555);
		
		List<String> friends = new ArrayList<String>();
		friends.add("Rani");
		friends.add("Roshan");
		friends.add("Ranjana");
		
		model.addAttribute("f",friends);
		System.out.println("this is home url");
		return "index";
	}
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("this is about page");
		return "about";
	}
	
	@RequestMapping("/getting")
	public ModelAndView help() {
		System.out.println("how may i help you?");
		// creating the ModalAndView
		ModelAndView modelAndView = new ModelAndView();
		// setting the data
		modelAndView.addObject("name", "Anshu Sony");
		modelAndView.addObject("id", 111112);
		LocalDateTime time= LocalDateTime.now();
		modelAndView.addObject("t",time);
		// marks
		List<Integer> marks = new ArrayList<Integer>();
		marks.add(12);
		marks.add(13);
		marks.add(34);
		
		modelAndView.addObject("mark", marks);
		return modelAndView;
	}
}
