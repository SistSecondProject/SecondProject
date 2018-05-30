package com.sist.community;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




public class SpecDAO {

	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static List<SpecVO> specInsertData(SpecVO vo){
		List<SpecVO> list=new ArrayList<SpecVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			session.insert("specInsert",vo);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return list;
	}
	
	public static void specReplyInsertData(SpecReplyVO vo){
		
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			session.insert("specReplyInsert",vo);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	
public static void specReplyHitData(int no){
		
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			session.update("specReplyHit",no);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}

public static void specReplyLikeData(int no){
	
	SqlSession session=null;
	try
	{
		session=ssf.openSession(true);
		session.update("specReplyLikePoint",no);
	}catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	finally
	{
		if(session!=null)
			session.close();
	}
}
public static void specReplydisLikeData(int no){
	
	SqlSession session=null;
	try
	{
		session=ssf.openSession(true);
		session.update("specReplydisLikePoint",no);
	}catch(Exception ex)
	{
		System.out.println(ex.getMessage());
	}
	finally
	{
		if(session!=null)
			session.close();
	}
}
	
	public static List<SpecVO> specListData(){
		List<SpecVO> list=new ArrayList<SpecVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("specList");
			
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return list;
	}
	public static List<SpecReplyVO> specReplyListData(int no){
		List<SpecReplyVO> list=new ArrayList<SpecReplyVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("specReplyList",no);
			
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return list;
	}
	
	
	public static SpecVO specContentListData(int no){
		SpecVO vo=null;
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("specContentList",no);
			
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	
}
