package com.jhta.groupware.calendar.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jhta.groupware.calendar.dao.CalendarDao;
import com.jhta.groupware.calendar.vo.Sc_FileVo;
import com.jhta.groupware.calendar.vo.ScheduleVo;
import com.jhta.groupware.etc.ManipulateFile;

@Service
public class CalendarService {
	@Autowired private CalendarDao dao;	
	
	public int insert(ScheduleVo vo, MultipartFile file1, HttpSession session) {
		int result = dao.insertSchedule(vo);
		if(file1!=null) {
			ManipulateFile file = new ManipulateFile(file1,session);		
			String saveFileName = file.copyFileToServer("/resources/upload/calendar");
			System.out.println(saveFileName);
			System.out.println("emp_num :"+vo.getEmp_num());
			Sc_FileVo vo1 = new Sc_FileVo(0, saveFileName, file1.getOriginalFilename(), file1.getSize(), dao.getSch_num(vo.getEmp_num()));
			result = dao.sc_File(vo1);				
		}				
		return result;
	}
}
