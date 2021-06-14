package com.seol.webpageHaleMaven.service;

import java.util.logging.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seol.webpageHaleMaven.dao.ItemDao;
import com.seol.webpageHaleMaven.entity.Item;


@Repository
public class ItemDaoImpl implements ItemDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Logger logger = Logger.getLogger(getClass().getName());


	@Override
	public Item findByItemName(String itemName) {
		logger.info("=====>다오에서 아이템이 존재하는지 찾아본다. : ");

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Item> theQuery = currentSession.createQuery("from Item where mit_name=:uName", Item.class);
		
		theQuery.setParameter("uName", itemName);

		Item theItem = null;
		
		try {
			
			theItem = theQuery.getSingleResult();

		}catch(Exception e) {
			
			theItem = null;	
		}
		

		return theItem;
	}

}
