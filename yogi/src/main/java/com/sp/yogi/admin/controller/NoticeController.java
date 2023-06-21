package com.sp.yogi.admin.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.yogi.admin.domain.Notice;
import com.sp.yogi.admin.service.NoticeService;
import com.sp.yogi.member.SessionInfo;

@Controller("admin.noticeController")
@RequestMapping("/admin/notice/*")
public class NoticeController {
	@Autowired
	private NoticeService service;
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model, HttpSession session) throws Exception {
		model.addAttribute("mode", "write");

		return ".admin.notice.write";
	}
	
	@RequestMapping(value = "write", method=RequestMethod.POST)
	public String write(Notice dto, HttpSession session) throws Exception{

		SessionInfo info = (SessionInfo) session.getAttribute("member");

		try {
			String root = session.getServletContext().getRealPath("/");
			String pathname = root + "uploads" + File.separator + "notice";

			dto.setUserId(info.getUserId());
			System.out.println("controller");
			service.insertNotice(dto, pathname);
		} catch (Exception e) {
		}

		return "redirect:/admin/notice/list";
	}
	
	@RequestMapping(value = "article", method=RequestMethod.GET)
	public String article() throws Exception{
		return ".admin.notice.article";
	}
	
	@RequestMapping(value = "list", method=RequestMethod.GET)
	public String list() throws Exception{
		return ".admin.notice.list";
	}
}
