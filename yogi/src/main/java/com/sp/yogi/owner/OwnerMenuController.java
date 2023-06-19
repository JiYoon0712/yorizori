package com.sp.yogi.owner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("owner.ownerMenuController")
@RequestMapping("/owner/menu/*")
public class OwnerMenuController {
	
	@RequestMapping(value = "menuCategory", method = RequestMethod.GET)
	public String menuCategory() throws Exception {
		
		return ".owner.menu.menuCategory";
	}
	
	@RequestMapping(value = "menuDetail", method = RequestMethod.GET)
	public String menuDetail() throws Exception {
		
		return ".owner.menu.menuDetail";
	}
	
	@RequestMapping(value = "option", method = RequestMethod.GET)
	public String option() throws Exception {
		
		return ".owner.menu.optionReg";
	}
}
