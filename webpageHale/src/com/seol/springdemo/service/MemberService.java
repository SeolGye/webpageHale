package com.seol.springdemo.service;

import java.util.List;

import com.seol.springdemo.entity.Member;

public interface MemberService {

	public List<Member> getMembers(int theSortField);

	public void saveMember(Member theMember);

	public Member getMember(int theId);

	public void deleteMember(int theId);

	public List<Member> searchMembers(String theSearchName);
	
}


