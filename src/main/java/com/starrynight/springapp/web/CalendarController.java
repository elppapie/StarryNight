package com.starrynight.springapp.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/Calendar")
public class CalendarController {
	
	@GetMapping("/ToCal.pog")
	public String calendar(
			//Authentication auth,
			@RequestParam Map map
			) {
		return "calendar/calendar.star";
	}	
	
	@PostMapping("/Add.pog")
	public String add(
			//Authentication auth,
			@RequestParam Map map
			) {
		return "calendar/addEvent.star";
	}
}
