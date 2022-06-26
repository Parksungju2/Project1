package com.park.service;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.park.dao.GuestbookDAO;
import com.park.ibatis.MyAppSqlConfig;
import com.park.vo.GuestbookVO;

public class UpdateService {

	private static UpdateService instance = new UpdateService();
	private UpdateService() { }
	public static UpdateService getInstance() {
		return instance;
	}
	
	public void update(GuestbookVO vo) {
		System.out.println("UpdateService 클래스의 update() 메소드");
		SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
		
		try {
			GuestbookDAO.getInstance().update(mapper, vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
