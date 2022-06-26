package com.park.ibatis;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class MyAppSqlConfig {
	private static final SqlMapClient sqlMap;
	static {	
		try {
			String resource = "com/park/ibatis/SqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException ("Error : " + e);
		}
	}
	
	public static SqlMapClient getSqlMapInstance() {
		return sqlMap;
	}
}
