package com.jhta.groupware.controller.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jhta.groupware.service.calendar.CalendarService;

@Controller
public class CalendarController {
	@Autowired private CalendarService service;
}
