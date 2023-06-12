package com.sp.yogi.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("notice.memberController")
@RequestMapping("/notice/*")
public class NoticeController {

	@GetMapping("home")
	public String home() {
		
		return "notice/home";
	}
}