package com.jhta.groupware.sign.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.groupware.sign.dao.SignDao;
import com.jhta.groupware.sign.vo.DocTypeVo;

@Service
public class SignService {
	@Autowired private SignDao dao;
	
	public DocTypeVo getdoc(int num) {
		return dao.getdoc(num);
	}
}
