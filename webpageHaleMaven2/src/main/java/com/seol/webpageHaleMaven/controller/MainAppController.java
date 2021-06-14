package com.seol.webpageHaleMaven.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.seol.webpageHaleMaven.entity.Item;
import com.seol.webpageHaleMaven.service.ItemService;

@Controller
public class MainAppController {	
	
	
	@Autowired
	private ItemService itemService;
	
	@GetMapping("/")
	public String showHome(Model theModel) {
		
		List<Item> theItems = itemService.getItem();
		theModel.addAttribute("items", theItems);
			
		return "home";
	}
	
	
	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String showSystems() {
		return "systems";
	}
}


