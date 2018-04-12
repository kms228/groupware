package com.jhta.groupware.sign.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.groupware.sign.vo.DocTypeVo;

@Repository
public class SignDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE="com.jhta.groupware.mybatis.SignMapper";
	
	public DocTypeVo getdoc(int num) {
		return sqlSession.selectOne(NAMESPACE+".getdoc",num);
	}
}
