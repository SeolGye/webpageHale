package com.seol.webpageHaleMaven.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl implements CartDao{

	
	@Autowired
	private SessionFactory sessionFactory;

	

}
