package com.latzchaat.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.multipart.MultipartFile;

import com.latzchaat.model.UserDetails;
import com.latzchaat.service.UserService;

@Controller
public class UserController {
	UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/RegisterUser", method = RequestMethod.POST)
	public String insertProduct(@Valid @ModelAttribute("userDetails") UserDetails userDetails, BindingResult result,
			Model m, HttpServletRequest request) {
		System.out.println("hi 1");
		/*
		 * if (result.hasErrors()) { System.out.println(result.toString());
		 * 
		 * m.addAttribute("listProduct", this.userService.getAllProduct());
		 * return "Register"; }
		 */
		
		List<UserDetails> userList = userService.getAllUsers();

		for (int i = 0; i < userList.size(); i++) {
			if (userDetails.getEmail().equals(userList.get(i).getEmail())) {
				m.addAttribute("emailMsg", "Email already exists");

				return "Register";
			}
		}
		if (userDetails.getId() == 0) {
			this.userService.registerUser(userDetails);
			System.out.println(userDetails.getImage());

			MultipartFile file = userDetails.getImage();
			System.out.println(file.getName());
			String originalfile = file.getOriginalFilename();
			System.out.println("hi 3");
			String filepath = request.getSession().getServletContext().getRealPath("/resources/images/");
			System.out.println(filepath);
			String filename = filepath + "\\" + userDetails.getId() + ".jpg";
			System.out.println("hi 4");
			try {
				byte imagebyte[] = userDetails.getImage().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
				fos.write(imagebyte);
				fos.close();
				System.out.println(filename);
				System.out.println(userDetails.getFname());

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		else

		{
			/* this.userService.updateProduct(product) */;
		}

		return "redirect:/Login";
	}
	
	
	@RequestMapping(value = "/UserHome/{id}", method = RequestMethod.POST)
	
	  public String update(@PathVariable("id")int id ,@ModelAttribute("u") UserDetails userDetails,Map map)
	  {
		 System.out.println("user id is" +userDetails.getId());
		 userService.updateUserDetails(userDetails);
		/* u=userService.getUserById(id);*/
		/*map.put("user",u);*/
		 System.out.println("Before user home");
		  return "redirect:/UserHome";
	  }
	/*public String updateUserDetails(@Valid @ModelAttribute("userDetail") UserDetails userDetail, BindingResult result,
			Model m, HttpServletRequest request) {
		userService.updateUserDetails(userDetail);
		
		return "";
		
	}*/

}
