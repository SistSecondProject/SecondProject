package com.sist.self_introduction;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class IntroductionDAO {
	 private static SqlSessionFactory ssf;
	 
	 static // static 블럭 : static변수에 대한 초기화 
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
		   List<IntroductionVO> list=new ArrayList<IntroductionVO>();
		   SqlSession session=null;//connection연결=>sql문장수행 
		   try
		   {
			   //session 생성 = connection생성 => getConnection()
			   session=ssf.openSession();
			   // openSession() => openSession(true)
			   // autoCommit(false)   autoCommit(true)
			   // 실행 결과값 받기 
			   list=session.selectList("intoListData", map);
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
	   
	   // 추가    
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
	   }
	   
/*	   //내용 보기
	   public static IntroductionVO intoContent(int no)
	   {
		   IntroductionVO vo = new IntroductionVO();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			  
			   vo = session.selectOne("intoContentData",no);
			   
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
	   */
	   /*public static boolean boardUpdate(BoardVO vo)
	   {
		   //비밀번호가 같으면 수정한다.
		   boolean bCheck=false;
		   SqlSession session =null;
		   try
		   {
			   session= ssf.openSession();
			   String pwd=session.selectOne("boardGetPwd", vo.getNo());
			   if(pwd.equals(vo.getPwd()))
			   {
				   bCheck=true;
				   session.update("boardUpdate",vo);
				   session.commit();
			   }
			   else
			   {
				   bCheck=false;
			   }
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
					   
		   }
		   return bCheck;
	   }*/
	   
	 
	   
	  
}
