package com.park.service;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.park.dao.GuestbookDAO;
import com.park.ibatis.MyAppSqlConfig;
import com.park.vo.GuestbookVO;

public class InsertService {

	private static InsertService instance = new InsertService();
	private InsertService() { }
	public static InsertService getInstance() {
		return instance;
	}
	
	public void insert(GuestbookVO vo) {
		System.out.println("InsertService 클래스의 insert() 메소드");
		
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		
		try {
			GuestbookDAO.getInstance().insert(mapper, vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}






