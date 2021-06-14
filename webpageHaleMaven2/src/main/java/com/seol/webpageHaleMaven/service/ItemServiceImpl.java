package com.seol.webpageHaleMaven.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seol.webpageHaleMaven.dao.ItemDao;
import com.seol.webpageHaleMaven.entity.Item;


@Service
public class ItemServiceImpl implements ItemService{

	
	@Autowired
	private ItemDao itemDao;
	
	
	@Override
	@Transactional
	public List<Item> getItem() {
		return itemDao.getItem();
	}
	
}