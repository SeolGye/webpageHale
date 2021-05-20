package com.seol.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seol.springdemo.dao.MemberDAO;
import com.seol.springdemo.entity.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	@Transactional
	public void saveMember(Member theMember) {

		memberDAO.saveMember(theMember);
	}

	@Override
	@Transactional
	public Member getMember(int theId) {

		return memberDAO.getMember(theId);
	}

	@Override
	@Transactional
	public void deleteMember(int theId) {
		 memberDAO.deleteMember(theId);
	}

	@Override
	@Transactional
	public List<Member> searchMembers(String theSearchName) {

		return memberDAO.searchMembers(theSearchName);
	}

	@Override
	@Transactional
	public List<Member> getMembers(int theSortField) {
		return memberDAO.getMembers(theSortField);
	}
}


