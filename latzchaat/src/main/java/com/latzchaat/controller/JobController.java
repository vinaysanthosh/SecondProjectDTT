package com.latzchaat.controller;

import java.security.Principal;
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
import com.latzchaat.service.JobService;

@Controller
public class JobController {
	private JobService jobService;
	@Autowired
	public void setJobService(JobService jobService) {
		this.jobService = jobService;
	}

	@Autowired
	public JobController(JobService jobService) {
		
		this.jobService = jobService;
	}
	
	/*@RequestMapping(value = "/sample")
	public ModelAndView getAllBlogs(Model model, Principal p) {
		List<Jobs> jobs = jobService.getAllJobs();		
		
		ModelAndView mv = new ModelAndView("sample");
		model.addAttribute("job",new Jobs());
		model.addAttribute("jobs", jobs);
		 
		return mv;
	}*/
	
	@RequestMapping(value = "/InsertJob", method = RequestMethod.POST)
	public String insertJob(@Valid @ModelAttribute("job") Jobs job, BindingResult result, Model m,
			HttpServletRequest request) {
		if(job.getJobid()==0)
		{
			System.out.println("insert");
			jobService.insertJob(job);
		}
		else
		{
			System.out.println("update");
			this.jobService.updateJob(job);
		}
		return "redirect:/AdminHome";
	}

	@RequestMapping("/DeleteJob/{jobid}")
	public String deleteJob(@PathVariable("jobid") int jobid) {
		this.jobService.deleteJob(jobid);
		return "redirect:/AdminHome";
	}
	
	@RequestMapping("/UpdateJob/{jobid}")
	public String updateProduct(@PathVariable("jobid") int jobid, Model model) {
		System.out.println("Controller start");
		model.addAttribute("job", jobService.getOneJob(jobid));
		model.addAttribute("jobs", jobService.getAllJobs());
		model.addAttribute("blog", new Blogs());
		model.addAttribute("blogs", jobService.getAllBlogs());
		System.out.println("Controller end");
		return "AdminHome";
	}

}
