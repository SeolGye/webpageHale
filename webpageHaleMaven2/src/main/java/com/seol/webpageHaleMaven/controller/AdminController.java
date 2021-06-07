package com.seol.webpageHaleMaven.controller;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seol.webpageHaleMaven.dao.MemberDao;
import com.seol.webpageHaleMaven.entity.Member;
import com.seol.webpageHaleMaven.service.MemberService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("/")
	public String showSystemMode(){
		return "adminPage";
	}
	
	@GetMapping("/memberList")
	public String showMemberList(Model theModel) {
		List<Member> theMembers =  memberService.getMember();
		theModel.addAttribute("members", theMembers);
		return "adminMemberList";
	}
	
	/*
	 * @PostMapping("/saveEditMember") public String
	 * saveEditMember(@ModelAttribute("member") Member theEditMember, BindingResult
	 * theBindingResult, Model theModel) {
	 * 
	 * if (theBindingResult.hasErrors()) { logger.info("=====>Binding Result Error"
	 * + theBindingResult + "실패");
	 * 
	 * return "memberEdit"; }
	 * 
	 * memberService.saveOrUpdate(theEditMember);
	 * 
	 * return "redirect:/admin/memberList"; }
	 */
}
