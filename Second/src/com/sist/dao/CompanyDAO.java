package com.sist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CompanyDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public static List<String> categoryName(){
		List<String> list = new ArrayList<String>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list=session.selectList("categoryName");
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}
	public static List<Integer> categoryCount(){
		List<Integer> list = new ArrayList<Integer>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list=session.selectList("categoryCount");
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			if(session!=null)session.close();
		}
		return list;
	}
}
