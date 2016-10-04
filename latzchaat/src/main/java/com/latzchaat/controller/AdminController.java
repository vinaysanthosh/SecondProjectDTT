package com.latzchaat.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.latzchaat.model.Blogs;
import com.latzchaat.model.Jobs;
import com.latzchaat.service.BlogsService;
import com.latzchaat.service.UserService;

@Controller
public class AdminController {
	UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	BlogsService blogsService;

	public void setBlogsService(BlogsService blogsService) {
		this.blogsService = blogsService;
	}

	@Autowired
	public AdminController(BlogsService blogsService) {

		this.blogsService = blogsService;
	}

	@RequestMapping(value = "/AdminHome")
	public ModelAndView getAllBlogs(Model model, Principal p) {
		List<Blogs> blogs = blogsService.getAllBlogs();

		ModelAndView mv = new ModelAndView("AdminHome");
		model.addAttribute("blog", new Blogs());
		model.addAttribute("blogs", blogs);
		model.addAttribute("job", new Jobs());
		model.addAttribute("jobs", blogsService.getAllJobs());
		System.out.println(new Gson().toJson(blogs));
		return mv;
	}

	@RequestMapping(value = "/InsertAdminBlog", method = RequestMethod.POST)
	public String insertAdminBlog(@Valid @ModelAttribute("blog") Blogs blog, BindingResult result, Model m,
			HttpServletRequest request) {
		if (blog.getBlogid() == 0) {
			System.out.println("insert");
			blogsService.insertBlog(blog);
		} else {
			System.out.println("update");
			this.blogsService.updateBlog(blog);
		}
		return "redirect:/AdminHome";
	}

	@RequestMapping("/Admin/deleteBlog/{blogid}")
	public String deleteBlog(@PathVariable("blogid") int blogid) {
		this.blogsService.deleteBlog(blogid);
		return "redirect:/AdminHome";
	}

	@RequestMapping("/Admin/updateBlog/{blogid}")
	public String updateProduct(@PathVariable("blogid") int blogid, Model model) {
		System.out.println("Controller start");
		model.addAttribute("blog", blogsService.getOneBlog(blogid));
		model.addAttribute("blogs", blogsService.getAllBlogs());
		model.addAttribute("job", new Jobs());
		model.addAttribute("jobs", blogsService.getAllJobs());
		System.out.println("Controller end");
		return "AdminHome";
	}

}
