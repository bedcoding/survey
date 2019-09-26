package com.spring.mybatisSurvey.model;

import java.util.List;

// DAO
public interface MybatisMemberMapper {
	public List<MybatisMember> getAllMembers();
	public List<Q> getAllMembers2();
	public List<MybatisMember> getAllMembers3();
	public MybatisMember getMember(int answernum);
	public void insertMember(MybatisMember mybatisMember);
	public void updateMember(MybatisMember mybatisMember);
	public void deleteMember(int answernum);
}
