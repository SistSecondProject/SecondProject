package com.sist.member;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.pass_info.PassVO;

public class MemberDAO {
	 private static SqlSessionFactory ssf;
		 
		 static  
		   {
			   try
			   {
				   // XML�б�
				   Reader reader=Resources.getResourceAsReader("Config.xml");
				   // Config.xml => mapper.xml
				   // �Ľ̿�û 
				   ssf=new SqlSessionFactoryBuilder().build(reader);
				   // ssf => getConnection(),disConnection()
				   // Spring,MyBatis ==> classpath:SRC
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
		   }
		 
		 //id�ߺ�
		 public void idCheck(String id)
		 {
			 SqlSession sqlSession=null;
			  try{
				  // sqlSession=sqlFactory.openSession();
				  // int n=sqlSession.insert("idcheck",vo);
				   sqlSession.commit();
				   //return n;
				  }finally{
				   sqlSession.close();
				  }
		    	 
		 }
		 
		 
		 public int insert(MemberVO vo){
			  SqlSession sqlSession=null;
			  try{
			 //  sqlSession=sqlFactory.openSession();
			   int n=sqlSession.insert("insert",vo);
			   sqlSession.commit();
			   return n;
			  }finally{
			   sqlSession.close();
			  }
			}
			}
	       
			
	   
			
		




	   
	   
	   
	   //ȸ������ - �α��� ó��

	   //�α��� ó��



