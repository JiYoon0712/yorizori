package com.sp.yogi.owner.menu;

import java.util.List;
import java.util.Map;

public interface MenuService {

	//categoryList : 카테고리 list
	public List<Menu> categoryList(long restaurantNum);
	//categoryName : 카테고리명 가져오기
	public String categoryName(long num);
	//categoryCount : 카테고리 개수
	public int categoryCount(long restaurantNum);
	//insertCategory : 카테고리 추가
	public void insertCategory(Menu dto) throws Exception;
	//updateCategory : 카테고리 수정 update
	public void updateCategory(Menu dto) throws Exception;
	//updateEnabled : 카테고리 enabled 변경
	public void updateEnabled(Menu dto) throws Exception;
	//menuList : 카테고리번호별 메뉴리스트
	public List<Menu> menuList(long num);
	//menuCount : 카테고리번호별 메뉴개수
	public int menuCount(long num);
	//readMenu : 메뉴번호별 메뉴정보불러오기
	public Menu readMenu(long menuNum);
	//insertMenu : 메뉴등록
	public void insertMenu(Menu dto,String pathname) throws Exception;
	//updateMenu : 메뉴수정
	public void updateMenu(Menu dto,String pathname) throws Exception;
	//updateStock : 메뉴 stock 수정
	public void updateStock(Map<String, Object> map);
	//deleteMenu : 카테고리번호별 메뉴별 삭제
	public void deleteMenu(long menuNum) throws Exception;
	//insertOption : 옵션추가
	public void insertOption(Menu dto) throws Exception;
	//optionList : 옵션 리스트
	public List<Menu> optionList(long menuNum);
	//deleteOption : 옵션 삭제
	public void deleteOption(Map<String, Object> map);
	//optionNameList : 옵션그룹별 옵션상세리스트
	public List<Menu> optionNameList(Map<String,Object> map);
	//optionGroup : 옵션 대분류
	public List<Menu> optionGroup(long menuNum);
 }
