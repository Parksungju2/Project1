package com.park.service;

import java.sql.SQLException;
import java.util.HashMap;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.park.dao.GuestbookDAO;
import com.park.ibatis.MyAppSqlConfig;
import com.park.vo.GuestbookList;
import com.park.vo.GuestbookVO;
import com.park.vo.Param;

public class SelectService {

	private static SelectService instance = new SelectService();
	private SelectService() { }
	public static SelectService getInstance() {
		return instance;
	}
	
	public GuestbookList selectList(int currentPage) {
		System.out.println("SelectService 클래스의 selectList() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		
		GuestbookList guestbookList = null;
		GuestbookDAO dao = GuestbookDAO.getInstance();
		
		try {
			int pageSize = 5;
			int totalCount = dao.selectCount(mapper);
			
			guestbookList = new GuestbookList(pageSize, totalCount, currentPage);
			
			HashMap<String, Integer> hmap = new HashMap<String, Integer>();
			hmap.put("startNo", guestbookList.getStartNo());
			hmap.put("endNo", guestbookList.getEndNo());
			
			guestbookList.setList(dao.selectList(mapper, hmap));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return guestbookList;
	}
	
	public GuestbookList selectListMemo(int currentPage, String item) {
		System.out.println("SelectService 클래스의 selectListMemo() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		GuestbookList guestbookList = null;
		GuestbookDAO dao = GuestbookDAO.getInstance();
		
		try {
			int pageSize = 5;
			int totalCount = dao.selectCountMemo(mapper, item);
			
			guestbookList = new GuestbookList(pageSize, totalCount, currentPage);
			
			Param param = new Param();
			param.setStartNo(guestbookList.getStartNo());
			param.setEndNo(guestbookList.getEndNo());
			param.setItem(item);
			
			guestbookList.setList(dao.selectListMemo(mapper, param));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return guestbookList;
	}
	
	public GuestbookList selectListName(int currentPage, String item) {
		System.out.println("SelectService 클래스의 selectListName() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		GuestbookList guestbookList = null;
		GuestbookDAO dao = GuestbookDAO.getInstance();
		
		try {
			int pageSize = 5;
			int totalCount = dao.selectCountName(mapper, item);
			guestbookList = new GuestbookList(pageSize, totalCount, currentPage);
			Param param = new Param();
			param.setStartNo(guestbookList.getStartNo());
			param.setEndNo(guestbookList.getEndNo());
			param.setItem(item);
			guestbookList.setList(dao.selectListName(mapper, param));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return guestbookList;
	}
	
	public GuestbookList selectListMemoName(int currentPage, String item) {
		System.out.println("SelectService 클래스의 selectListMemoName() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		GuestbookList guestbookList = null;
		GuestbookDAO dao = GuestbookDAO.getInstance();
		
		try {
			int pageSize = 5;
			int totalCount = dao.selectCountMemoName(mapper, item);
			guestbookList = new GuestbookList(pageSize, totalCount, currentPage);
			Param param = new Param();
			param.setStartNo(guestbookList.getStartNo());
			param.setEndNo(guestbookList.getEndNo());
			param.setItem(item);
			guestbookList.setList(dao.selectListMemoName(mapper, param));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return guestbookList;
	}
	
	public GuestbookList selectListMulti(int currentPage, String category, String item) {
		System.out.println("SelectService 클래스의 selectListMulti() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		GuestbookList guestbookList = null;
		GuestbookDAO dao = GuestbookDAO.getInstance();
		
		try {
			int pageSize = 5;
			Param param = new Param();
			param.setCategory(category);
			param.setItem(item);
			int totalCount = dao.selectCountMulti(mapper, param);
			System.out.println(totalCount);
			
			guestbookList = new GuestbookList(pageSize, totalCount, currentPage);
			param.setStartNo(guestbookList.getStartNo());
			param.setEndNo(guestbookList.getEndNo());
			guestbookList.setList(dao.selectListMulti(mapper, param));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return guestbookList;
	}
	
	public GuestbookVO selectByIdx(int idx) {
		System.out.println("SelectService 클래스의 selectByIdx() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		GuestbookVO vo = null;
		
		try {
			vo = GuestbookDAO.getInstance().selectByIdx(mapper, idx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
}










