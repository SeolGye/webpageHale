package com.seol.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.seol.springdemo.entity.Member;
import com.seol.springdemo.util.SortUtils;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveMember(Member theMember) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theMember);
	}


	@Override
	public Member getMember(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Member theMember = currentSession.get(Member.class, theId);
		return theMember;		
	}

	@Override
	public void deleteMember(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Member where id=:memberId");
		theQuery.setParameter("memberId", theId);
		theQuery.executeUpdate();
	}

	@Override
	public List<Member> searchMembers(String theSearchName) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Member> theQuery = null;
		if (theSearchName!=null && theSearchName.trim().length()>0) {
			theQuery = currentSession.createQuery("from Member where lower(mem_username) like :theName or lower(mem_nickname) like:theName", Member.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
			
		}else {
			theQuery = currentSession.createQuery("from Member",Member.class);
		}
		List<Member> members = theQuery.getResultList();
		return members;
	}

	@Override
	public List<Member> getMembers(int theSortField) {
		Session currentSession = sessionFactory.getCurrentSession();
		String theFieldName= null;
		switch(theSortField) {
			case SortUtils.MEM_ID:
				theFieldName="mem_id";
				break;
			case SortUtils.MEM_USERNAME:
				theFieldName="mem_username";
				break;
			case SortUtils.MEM_NICKNAME:
				theFieldName="mem_nickname";
				break;
			case SortUtils.MEM_EMAIL:
				theFieldName="mem_email";
				break;
			default:
				theFieldName="mem_id";
		}
		
		String queryString ="from Member order by " + theFieldName;
		Query<Member> theQuery = currentSession.createQuery(queryString ,Member.class);
		List<Member> members= theQuery.getResultList();

		return members;
	}
}

