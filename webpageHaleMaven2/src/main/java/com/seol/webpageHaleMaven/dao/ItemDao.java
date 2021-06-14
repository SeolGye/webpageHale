package com.seol.webpageHaleMaven.dao;

import com.seol.webpageHaleMaven.entity.Item;

public interface ItemDao {

	Item findByItemName(String itemName);

}
