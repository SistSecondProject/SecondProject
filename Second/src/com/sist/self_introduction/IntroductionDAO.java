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
	   
	   // �����߰�    
	   public static void intoInsert(IntroductionVO vo)
	   {
		   
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			
			   session.insert("intoInsert",vo);
			   session.commit();
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
	   
	   //���� ����
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
	   
	   // ���� �����κ�(update)
	   public static IntroductionVO intoUpdateData(int no)
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
	   
	   public static List<IntroductionVO> intoUpdate(IntroductionVO vo)
	   {
		   List<IntroductionVO> list = new ArrayList<IntroductionVO>();
		   
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   session.update("intoUpdateData",vo);
			   //session.commit(true);
			   
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
	 
	   
	   //���� ����

	   public static void Delete(int no)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   session.delete("infoDelete",no);
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
	   public static List<IntroductionVO> findList(String userid) {
		   List<IntroductionVO> list =null;
		   
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("findList",userid);		   
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
	      
}

