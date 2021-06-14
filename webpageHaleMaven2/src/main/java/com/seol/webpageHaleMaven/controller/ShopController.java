package com.seol.webpageHaleMaven.controller;

import java.security.Principal;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seol.webpageHaleMaven.entity.Item;
import com.seol.webpageHaleMaven.service.ItemService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ItemService itemServcie;
	
	private Logger logger = Logger.getLogger(getClass().getName());


//아이템 상세 페이지
	@PostMapping("/{itemId}")
	public String showDetailPage(@PathVariable("itemId")int itemId, Model theModel) {
		
		//아이템 객체 가져오기
			//아이템 아이디로 옵션 객체를 가져온다.
		
			//옵션객체를 아이템 객체에 집어 넣는다.
		
		//뷰에 쏜다.
		
		
		theModel.addAttribute("idTest", itemId);
		
		
		
		return "shop-detail";
	}
	
	
//등록 페이지 보여주기
	@GetMapping("/addItem")
	public String addItemPage(Model theModel) {
		theModel.addAttribute("item", new Item());
		return "item-registration-form";
	}
	
	
	@PostMapping("/addItemProcessing")
	public String addItemProcessing(HttpServletRequest req, @ModelAttribute("item") Item theItem, Model theModel)
	{
		
		String itemName =theItem.getMit_name();
		
		Item existing = itemServcie.findByItemName(itemName);
		
		if(existing != null) {
			logger.info("=====>아이템 이미 존재: ");
			theModel.addAttribute("item",new Item());
			return "item-registration-form";
		}
		logger.info("=====>아이템이 없으니 넣겟다 ");

		String[] opitonName = req.getParameterValues("addText[]");
		String[] opitonPrice = req.getParameterValues("addPrice[]");
		
	
		
		for(int i = 0 ; i < opitonName.length; i++) {
			
		}
		
		return "home";
	}
	
	
	
}
