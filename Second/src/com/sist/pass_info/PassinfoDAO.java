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
	   public static List<PassVO> passListData(Map map) 
	   {
		   List<PassVO> list= new ArrayList<PassVO>();
		   SqlSession session=null;//connection����=>sql������� 
		   try
		   {
			   //session ���� = connection���� => getConnection()
			   session=ssf.openSession();
			   // openSession() => openSession(true)
			   // autoCommit(false)   autoCommit(true)
			   // ���� ����� �ޱ� 
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
			   // connection �ּ� �б�
			   session=ssf.openSession();
			   total=session.selectOne("passTotalPage");
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
	   
	 /*  // �߰�    
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
	   
	   //���� ����
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
			   // ���� Connection
			   session=ssf.openSession(); //getConnection()
			   list=session.selectList("passAllData", companyname);
			   
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();// ��ȯ disConnection()
		   }
		   return list;
	   }*/


	


	   

	   
	 
	   
	  
}
