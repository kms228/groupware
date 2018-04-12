package com.jhta.groupware.login.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.groupware.login.dao.LoginDao;
import com.jhta.groupware.member.vo.MemberAccountVo;

@Service
public class LoginService {
	@Autowired
	private LoginDao dao ;
	public boolean login(HashMap<String,Object>map) {
		MemberAccountVo vo = dao.login(map);
		if(vo!=null) {
			System.out.println("서비스 통과");
			return true;
		}else {
			System.out.println("서비스XXXX");
			return false;
		}
	}
}
