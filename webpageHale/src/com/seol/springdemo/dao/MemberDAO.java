package com.seol.springdemo.dao;

import java.util.List;

import com.seol.springdemo.entity.Member;

public interface MemberDAO {
	
	
	public List<Member> getMembers(int theSortField);

	public void saveMember(Member theMember);

	public Member getMember(int theId);

	public void deleteMember(int theId);

	public List<Member> searchMembers(String theSearchName);

}

