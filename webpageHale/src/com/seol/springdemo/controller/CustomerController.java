package com.seol.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seol.springdemo.dao.MemberDAO;
import com.seol.springdemo.entity.Member;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
	
		
		List<Member> theMembers = memberDAO.getMember();
		
		theModel.addAttribute("members",theMembers);
		
		
		return "list-customers";
	}

}
