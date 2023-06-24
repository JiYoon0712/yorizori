package com.sp.yogi.restaurant;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.yogi.member.SessionInfo;

@Controller("restaurant.restaurantController")
@RequestMapping("/restaurant/*")
public class RestaurantController {
	
	@Autowired
	RestaurantService service;

	@GetMapping("list")
	public String list(HttpSession session, 
			@RequestParam(value= "addr1", required = false) String addr1,
			@RequestParam(defaultValue = "all") String condition,
			HttpServletRequest req,
			Model model
			) throws Exception {
		SessionInfo info = (SessionInfo)session.getAttribute("member");
	
		String categoryNum = req.getParameter("categoryNum");
		
		// 로그인 안되어있는 상태면 로그인 창으로 이동
		if(info == null) {
			return ".member.login";
		}
		
		if(addr1 != null) {
			info.setDeliveryAddr(addr1);
			
			addr1 = service.extractAddress(addr1);

			info.setAddr1(addr1);
		}
		
		model. addAttribute("categoryNum", categoryNum);
		model.addAttribute("member", info);
		
		model.addAttribute("condition", condition);
		
		return ".restaurant.restaurant-list";
	}
	
	@GetMapping("search")
	@ResponseBody
	public Map<String, Object> search(HttpSession session, 
			@RequestParam(value= "addr1", required = false) String addr1,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam String keyword,
			HttpServletRequest req,
			Model model
			) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		
		
		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "UTF-8");
		}
		
		String categoryNum = req.getParameter("categoryNum");
		
		// 로그인 안되어있는 상태면 로그인 창으로 이동
		if(info == null) {
			resultMap.put("error", "로그인이 필요합니다.");
			return resultMap;
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("addr1", info.getAddr1());
		map.put("categoryNum", categoryNum);
		
		List<Restaurant> list = service.listRestaurant(map);
		System.out.println("====================");
		for(Restaurant r : list) {
			System.out.println("식당 이름 : " + r.getRestaurantName());
			System.out.println("최소 주문 금액 : " + r.getBasePrice());
			System.out.println("-------------");
		}
		
		
		for(Restaurant i : list) {
			if(i.getRating() == null) {
				i.setRating(0.0);
			}
		}
		
		resultMap.put("categoryNum", categoryNum);
		resultMap.put("list", list);
		resultMap.put("member", info);
		resultMap.put("condition", condition);
		resultMap.put("keyword", keyword);
		
		return resultMap;
	}
	
	@GetMapping("info")
	public String info(
			@RequestParam("restaurantNum") Long restaurantNum,
			Model model
			) {
		
		model.addAttribute("restaurantNum", restaurantNum);
		
		return ".restaurant.restaurant-info";
	}
}
