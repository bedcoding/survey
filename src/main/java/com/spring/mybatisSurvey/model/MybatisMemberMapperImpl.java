package com.spring.mybatisSurvey.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//@Service
@Repository
public class MybatisMemberMapperImpl implements MybatisMemberMapper{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MybatisMember> getAllMembers() {
		return sqlSession.selectList("getAllMembers");
	}
	
	@Override
	public List<Q> getAllMembers2() {
		return sqlSession.selectList("getAllMembers2");
	}
	
	@Override
	public MybatisMember getMember(int answernum) {
		return sqlSession.selectOne("getMember", answernum);
	}
	
	@Override
	public void insertMember(MybatisMember mybatisMember) {		
		sqlSession.insert("insertMember", mybatisMember);
	}
	
	@Override
	public void updateMember(MybatisMember mybatisMember) {
		sqlSession.update("updateMember", mybatisMember);	
	}
	
	@Override
	public void deleteMember(int answernum) {
		sqlSession.delete("deleteMember", answernum);
	}
	
}