package com.jhta.groupware.service.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.groupware.dao.calendar.CalendarDao;

@Service
public class CalendarService {
	@Autowired private CalendarDao dao;
}
