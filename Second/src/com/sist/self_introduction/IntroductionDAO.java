package com.sist.self_introduction;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class IntroductionDAO {
	 private static SqlSessionFactory ssf;
	 
	 static // static �� : static������ ���� �ʱ�ȭ 
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
	
	   // ��� �б� (����� ���� ���)
	   //            ������  (resultType)   �Ű�����(parameterType)
	   public static List<IntroductionVO> intoListData(Map map) 
	   {
		   List<IntroductionVO> list=new ArrayList<IntroductionVO>();
		   SqlSession session=null;//connection����=>sql������� 
		   try
		   {
			   //session ���� = connection���� => getConnection()
			   session=ssf.openSession();
			   // openSession() => openSession(true)
			   // autoCommit(false)   autoCommit(true)
			   // ���� ����� �ޱ� 
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
			   // connection �ּ� �б�
			   session=ssf.openSession();
			   total=session.selectOne("intoTotalPage");
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   // connection ��ȯ
			   if(session!=null)
				   session.close();
		   }
		   return total;
	   }
	   
	   // �߰�    
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
	   
/*	   //���� ����
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
	   
	   // ���� �����κ�(update)
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
		   //��й�ȣ�� ������ �����Ѵ�.
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
