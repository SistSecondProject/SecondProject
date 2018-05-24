package com.sist.pass_info;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




public class PassinfoDAO {
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
	
	   // 목록 읽기 (저장된 내용 출력)
	   //            리턴형  (resultType)   매개변수(parameterType)
	   public static List<PassVO> passListData(Map map) 
	   {
		   List<PassVO> list= new ArrayList<PassVO>();
		   SqlSession session=null;//connection연결=>sql문장수행 
		   try
		   {
			   //session 생성 = connection생성 => getConnection()
			   session=ssf.openSession();
			   // openSession() => openSession(true)
			   // autoCommit(false)   autoCommit(true)
			   // 실행 결과값 받기 
			   list=session.selectList("passListData", map);
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
	   
	   public static int passTotalPage()
	   {
		   int total=0;
		   SqlSession session=null;
		   try
		   {
			   // connection 주소 읽기
			   session=ssf.openSession();
			   total=session.selectOne("passTotalPage");
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   // connection 반환
			   if(session!=null)
				   session.close();
		   }
		   return total;
	   }
	   
	 /*  // 추가    
	   public static void intoInsert(IntroductionVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   // autoCommit(true)
			   session.insert("intoInsert",vo);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
	   }*/
	   
	   //내용 보기
	   public static PassVO passContentData(int no)   {
		   PassVO vo = new PassVO();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			  
			   vo = session.selectOne("passContentData",no);
			   
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
	 /*  public static List<PassVO> passAllData(String companyname)
	   {
		   List<PassVO> list=new ArrayList<PassVO>();
		   SqlSession session=null;
		   try
		   {
			   // 연결 Connection
			   session=ssf.openSession(); //getConnection()
			   list=session.selectList("passAllData", companyname);
			   
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();// 반환 disConnection()
		   }
		   return list;
	   }*/


	


	   

	   
	 
	   
	  
}
