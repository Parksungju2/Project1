package com.park.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.park.vo.GuestbookVO;
import com.park.vo.Param;

public class GuestbookDAO {

	private static GuestbookDAO instance = new GuestbookDAO();
	private GuestbookDAO() { }
	public static GuestbookDAO getInstance() {
		return instance;
	}
	
	public void insert(SqlMapClient mapper, GuestbookVO vo) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 insert() 메소드");
		mapper.insert("insert", vo);
	}
	
	public int selectCount(SqlMapClient mapper) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectCount() 메소드");
		return (int) mapper.queryForObject("selectCount");
	}
	
	public ArrayList<GuestbookVO> selectList(SqlMapClient mapper, HashMap<String, Integer> hmap) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectList() 메소드");
		return (ArrayList<GuestbookVO>) mapper.queryForList("selectList", hmap);
	}
	
	public int selectCountMemo(SqlMapClient mapper, String item) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectCountMemo() 메소드");
		return (int) mapper.queryForObject("selectCountMemo", item);
	}
	
	public ArrayList<GuestbookVO> selectListMemo(SqlMapClient mapper, Param param) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectListMemo() 메소드");
		return (ArrayList<GuestbookVO>) mapper.queryForList("selectListMemo", param);
	}
	
	public int selectCountName(SqlMapClient mapper, String item) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectCountName() 메소드");
		return (int) mapper.queryForObject("selectCountName", item);
	}
	
	public ArrayList<GuestbookVO> selectListName(SqlMapClient mapper, Param param) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectListName() 메소드");
		return (ArrayList<GuestbookVO>) mapper.queryForList("selectListName", param);
	}
	
	public int selectCountMemoName(SqlMapClient mapper, String item) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectCountMemoName() 메소드");
		return (int) mapper.queryForObject("selectCountMemoName", item);
	}
	
	public ArrayList<GuestbookVO> selectListMemoName(SqlMapClient mapper, Param param) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectListMemoName() 메소드");
		return (ArrayList<GuestbookVO>) mapper.queryForList("selectListMemoName", param);
	}
	
	public int selectCountMulti(SqlMapClient mapper, Param param) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectCountMulti() 메소드");
		return (int) mapper.queryForObject("selectCountMulti", param);
	}
	
	public ArrayList<GuestbookVO> selectListMulti(SqlMapClient mapper, Param param) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectListMulti() 메소드");
		return (ArrayList<GuestbookVO>) mapper.queryForList("selectListMulti", param);
	}
	
	public GuestbookVO selectByIdx(SqlMapClient mapper, int idx) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 selectByIdx() 메소드");
		return (GuestbookVO) mapper.queryForObject("selectByIdx", idx);
	}
	
	public void delete(SqlMapClient mapper, int idx) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 delete() 메소드");
		mapper.delete("delete", idx);
	}
	
	public void update(SqlMapClient mapper, GuestbookVO vo) throws SQLException {
		System.out.println("GuestbookDAO 클래스의 update() 메소드");
		mapper.update("update", vo);
	}
	
}
