package com.seol.webpageHaleMaven.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seol.webpageHaleMaven.entity.Item;
import com.seol.webpageHaleMaven.entity.Member;

@Repository
public class ItemDaoImpl implements ItemDao{

	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Item> getItem() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Item> theQuery = currentSession.createQuery("from Item",Item.class);
		List<Item> items= theQuery.getResultList();
		return items;
	}

	

}
