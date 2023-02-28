package com.starrynight.springapp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/SN")
public class BasicController {
	
	
	@RequestMapping("/Calendar.pog")
	public String calendar() {
		return "calendar.star";
	}
	
	@RequestMapping("/AddEvent.pog")
	public String addEvent() {
		return "addEvent.star";
	}
	
}
