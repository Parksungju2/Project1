package com.park.service;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.park.dao.GuestbookDAO;
import com.park.ibatis.MyAppSqlConfig;

public class DeleteService {

	public static DeleteService instance = new DeleteService();
	private DeleteService() { }
	public static DeleteService getInstance() {
		return instance;
	}
	
	public void delete(int idx) {
		System.out.println("DeleteService 클래스의 delete() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		
		try {
			GuestbookDAO.getInstance().delete(mapper, idx);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
