package com.latzchaat.controller;

import java.security.Principal;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.latzchaat.model.Blogs;
import com.latzchaat.model.UserDetails;
import com.latzchaat.model.*;
@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	/* Mapping request for index page */
	@RequestMapping("/index")
	public ModelAndView indexPage1() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	@RequestMapping("/About")
	public ModelAndView aboutPage() {
		ModelAndView mv = new ModelAndView("About");
		return mv;
	}

	@RequestMapping("/Contact")
	public ModelAndView contactPage() {
		ModelAndView mv = new ModelAndView("Contact");
		return mv;
	}

	
	UserDetails userDetails;
	/* Mapping request for Register.jsp page */
	@RequestMapping("/Register")
	public ModelAndView registerPage(Model model) {
		ModelAndView mv = new ModelAndView("Register");
		userDetails=new UserDetails();
		model.addAttribute("userDetails",userDetails);
		
		return mv;
	}
	/*@RequestMapping("/Login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("Login");			
		return mv;
	}*/
	
	@RequestMapping(value = "/Login")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model m) {

		if (error != null) {
			m.addAttribute("error", "Invalid user details");
		}
		if (logout != null) {
			m.addAttribute("msg", "Logout");
		}
		/* m.addAttribute("user",u); */

		return new ModelAndView("Login");
	}

	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public String logincheck(@Valid @ModelAttribute("validate") UserDetails u, BindingResult result, Model model,
			@RequestParam("id") int id) {
		System.out.println("id value is" + id);
		if (result.hasErrors()) {
			return "Login";
		}

		return "Login";
	}

	
	@RequestMapping("/UserProfile")
	public ModelAndView userProfilePage() {
		ModelAndView mv = new ModelAndView("Profile");			
		return mv;
	}
	
	@RequestMapping("/ViewBlogs")
	public ModelAndView blogsPage() {
		ModelAndView mv = new ModelAndView("ViewBlogs");			
		return mv;
	}
	@RequestMapping("/CreateBlog")
	public ModelAndView createBlogPage(Model m) {
		Blogs blog=new Blogs();
		m.addAttribute("blog",blog);
		ModelAndView mv = new ModelAndView("CreateBlog");			
		return mv;
	}
	
	@RequestMapping("/chat1")
	public ModelAndView chatPage() {
		ModelAndView mv = new ModelAndView("Chat");			
		return mv;
	}
	
	@MessageMapping("/chat")
	  @SendTo("/topic/message")
	  public OutputMessage sendMessage(Message message, Principal principal) {
	    return new OutputMessage(message, new Date(),principal.getName());
	  }
	/*@RequestMapping("/UserHome")
	public ModelAndView userHomePage() {
		ModelAndView mv = new ModelAndView("UserHome");			
		return mv;
	}*/
}
