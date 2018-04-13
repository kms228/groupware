package com.jhta.groupware.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class WorkController {

	@RequestMapping("/work")
	public String work_request() {
		return ".work.work_request";
	}
	@RequestMapping("/setWork")
	public String work_set() {
		return ".work.work_set";
	}
	
}
