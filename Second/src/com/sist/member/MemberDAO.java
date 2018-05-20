package com.sist.member;

import java.io.Reader;
import java.sql.ResultSet;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.tools.ant.util.SymbolicLinkUtils;


import com.sist.pass_info.PassVO;

public class MemberDAO {
	 private static SqlSessionFactory ssf;
		 
		 static  
		   {
			   try
			   {
				   // XML읽기
				   Reader reader=Resources.getResourceAsReader("Config.xml");
				   // Config.xml => mapper.xml
				   // 파싱요청 
				   ssf=new SqlSessionFactoryBuilder().build(reader);
				   // ssf => getConnection(),disConnection()
				   // Spring,MyBatis ==> classpath:SRC
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
		   }
		 
		 //id중복
		 public int idCheck(String id) {
                SqlSession session=null;
                int count=0;
                try
                {
                      session=ssf.openSession();
                      count = session.selectOne("IdCheck", id);
                  	
            	}catch(Exception ex) {
            	
            		System.out.println(ex.getMessage());
            	}
                
                finally {
            		if(session!=null)
            			session.close();
            	}
            	return count;

		    }
		 //우편번호 검색
		 public ArrayList<ZipcodeVO> postfind(String dong)
		 {
		 ArrayList<ZipcodeVO> list = new ArrayList<ZipcodeVO>();
		 SqlSession session= null;  
		 try
		   {
			 session = ssf.openSession();
		     list = session.selectOne("postfindData",dong);
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
		 //동으로 검색
		   public int postfindCount(String dong)
		   {
			   SqlSession session=null;
               int count=0;
			   try
			   {
				   session=ssf.openSession();
                   count = session.selectOne("postfindCount", dong);
				   
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
			   finally
			   {
				   if(session!=null)
		       			session.close();
			   }
			   
			   return count;
		   } 
		  //회원 가입하기 
		   public static void memberJoin(MemberVO vo)
		   { 
				//Connecion = SqlSession
				SqlSession session = null;
				try {
					session=ssf.openSession(true);
					session.insert("memberJoin",vo);
				}catch (Exception ex) 
				{
					System.out.println(ex.getMessage());
				}
				finally 
				{
						if(session!=null) 
						session.close();
					}
		   }
} 
			
		   
		   
		 
		
	       
			
	   
			
		



	   
	   //회원가입 - 로그인 처리

	   //로그인 처리
/*
public static List<MusicChartVO> musicAllData(Map map){
	List<MusicChartVO> list = new ArrayList<MusicChartVO>();
	SqlSession session= null;
	try {
		session = ssf.openSession();
		list = session.selectList("musicAllData",map);
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return list;
}*/

