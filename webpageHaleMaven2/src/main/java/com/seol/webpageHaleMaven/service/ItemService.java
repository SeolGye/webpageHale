package com.seol.webpageHaleMaven.service;

import com.seol.webpageHaleMaven.entity.Item;

public interface ItemService {

	
	void saveItem(Item theItem);

	Item findByItemName(String itemName);
	
}
