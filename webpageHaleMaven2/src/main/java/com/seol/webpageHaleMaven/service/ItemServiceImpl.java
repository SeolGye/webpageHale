package com.seol.webpageHaleMaven.service;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seol.webpageHaleMaven.dao.ItemDao;
import com.seol.webpageHaleMaven.entity.Item;


@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao;
	
	private Logger logger = Logger.getLogger(getClass().getName());

	
	@Override
	@Transactional
	public void saveItem(Item theItem) {

		
		
	}

	@Override
	@Transactional
	public Item findByItemName(String itemName) {
		logger.info("=====>서비스에서 아이템이 존재하는지 찾아본다. : ");
		return itemDao.findByItemName(itemName);
	}

}
