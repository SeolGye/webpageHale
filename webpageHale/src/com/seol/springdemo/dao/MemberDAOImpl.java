package com.seol.springdemo.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.seol.springdemo.entity.Member;

public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override
	@Transactional
	public List<Member> getMember() {

		
		
		
		return null;
	}

}
