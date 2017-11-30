package com.neu.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neu.entity.B_UserInfo;

@Repository(value="loginDao")
public class LoginDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	//login validate
		public boolean b_validate(String name, String pass) {
			B_UserInfo b1 = new B_UserInfo();
			b1.setB_name(name);
			b1.setB_pass(pass);
			String temp = sqlSession.selectOne("com.neu.entity.UserMapper.B_Login",b1);
			if(temp!=null){
				return true;
			}
			return false;
		}
		

}
