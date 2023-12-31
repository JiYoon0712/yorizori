package com.sp.yogi.admin.service;

import java.util.List;
import java.util.Map;

import com.sp.yogi.owner.order.Order;
import com.sp.yogi.owner.Owner;

public interface ResManageService {
	public int dataCount(Map<String, Object> map);
	public List<Owner> listOwner(Map<String, Object> map);
	
	public Owner readOwner(String userId);
	
	public void updateOwnerEnabled(Map<String, Object> map) throws Exception; // 업체 정지
	public void releaseOwnerEnabled(Map<String, Object> map) throws Exception; // 업체 정지 해제
	public void insertOwnerState(Map<String, Object> map) throws Exception;
	public List<Owner> listOwnerState(String userId);
	public Owner readOwnerState(String userId);
	
	public Order readRestaurantId(String restaurantNum); // 업체관리_주문내역
	
	public void updateOwnerState(Map<String, Object> map) throws Exception; // 업체 정지 state
	
	public int orderListCount(Long restaurantNum); // 주문 개수
}
