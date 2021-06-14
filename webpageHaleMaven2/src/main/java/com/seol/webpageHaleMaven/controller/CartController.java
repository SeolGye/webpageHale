package com.seol.webpageHaleMaven.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class CartController {

	
	@PostMapping("/addcart")
	public String addCart(Principal principal, Model theModel) {
		
		
		
		
		return null;
	}
	
	//접속자 아이디를 가져온다.
	
	//아이디로 유저id를 가져온다.
	
	//유저 id로 유저객체를 가져온다
	
	//유저객체에 카트 객체에 넣는다..
	
	//카트에 아이템을 입력한다.
	
	//
	
	//접속자 아이디를 가져온다.
	
	//아이디로 유저id를 가져온다.
		
	//유저 id로 유저객체를 가져온다
	
	//유저에서 장바구니 리스트를 가져온다.
	
	//뷰에 장바구니 리스트를 쏜다. 
	
	//뷰에서 각 장바구니에서 아이템을 출력한다.
	
	
}
