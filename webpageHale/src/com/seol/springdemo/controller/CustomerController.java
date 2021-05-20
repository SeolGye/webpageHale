package com.seol.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seol.springdemo.dao.MemberDAO;
import com.seol.springdemo.entity.Member;
import com.seol.springdemo.service.MemberService;
import com.seol.springdemo.util.SortUtils;

@Controller
@RequestMapping("/member")
public class CustomerController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel, @RequestParam(required=false) String sort) {
	
		List<Member> theMembers= null;
		
		if (sort!=null) {
			int theSortField = Integer.parseInt(sort);
			theMembers=memberService.getMembers(theSortField);
		}
		else {
			theMembers=memberService.getMembers(SortUtils.MEM_ID);
		}
		theModel.addAttribute("members",theMembers);
		return "list-members";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel)
	{	
		
		Member theMember = new Member();
		theModel.addAttribute("member",theMember);
		return "member-form";
	}
	
	@PostMapping("/saveMember")
	public String saveCustomer(@ModelAttribute("member") Member theMember){
	
		memberService.saveMember(theMember);
		return "redirect:/member/list";
	}
	@GetMapping("/showFormForUpdate")
	public String showForFormUpdate(@RequestParam("memberId") int theId, Model theModel) {
		
		Member theMember = memberService.getMember(theId);
		theModel.addAttribute("member",theMember);
		return "member-form";
	}
	@GetMapping("/delete")
	public String deleteMember(@RequestParam("memberId") int theId, Model theModel) {
		memberService.deleteMember(theId);
		return "redirect:/member/list";
	}
	
	
	@GetMapping("/search")
	public String searchMembers(@RequestParam("theSearchName") String theSearchName, Model theModel) {
		
		List<Member> theMembers = memberService.searchMembers(theSearchName);
		theModel.addAttribute("members",theMembers);
		return "list-members";
	}
	
}



