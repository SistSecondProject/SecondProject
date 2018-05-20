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
		 //�����ȣ �˻�
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
		 //������ �˻�
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
		  //ȸ�� �����ϱ� 
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
			
		   
		   
		 
		
	       
			
	   
			
		



	   
	   //ȸ������ - �α��� ó��

	   //�α��� ó��
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

