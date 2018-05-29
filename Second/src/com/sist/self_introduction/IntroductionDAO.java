package com.sist.self_introduction;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class IntroductionDAO {
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
	   public static List<IntroductionVO> intoListData(Map map) 
	   {
		   List<IntroductionVO> ilist=new ArrayList<IntroductionVO>();
		   SqlSession session=null;//connection연결=>sql문장수행 
		   try
		   {
			   //session 생성 = connection생성 => getConnection()
			   session=ssf.openSession();
			   // openSession() => openSession(true)
			   // autoCommit(false)   autoCommit(true)
			   // 실행 결과값 받기 
			   ilist=session.selectList("intoListData", map);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return ilist;
	   }
	   
	   public static int intoTotalPage()
	   {
		   int total=0;
		   SqlSession session=null;
		   try
		   {
			   // connection 주소 읽기
			   session=ssf.openSession();
			   total=session.selectOne("intoTotalPage");
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
	   
	   // 내용추가    
	   public static void intoInsert(IntroductionVO vo)
	   {
		   
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
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
		 
	   }
	   
	   //내용 보기
	   public static IntroductionVO intoContentData(int no)
	   {
		   IntroductionVO vo = new IntroductionVO();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			  
			   vo = session.selectOne("infoContentData",no);
			   
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
	   
	   // 내용 수정부분(update)
	   public static IntroductionVO intoUpdateData(int no)
	   {
		   IntroductionVO vo = new IntroductionVO();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   vo = session.selectOne("intoUpdateData",no);
			   
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
