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
	 
	//���̵� �ߺ�üũ ���
	 public int idCheck(String id) 
	   {
		   
		   SqlSession session=null;//connection����=>sql������� 
		   int count=0;
		   try
		   {
			   
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
  
	 //���̵� �ߺ�üũ ���
    	 
   public int idCheck(String id)
   {
	   int count=0;
	   try
	   {
		   //�ּ� �� ���
		   getConnection();
		   String sql= "SELECT COUNT(*) FROM food_member "
		   		+ "WHERE id=?";
		   ps=conn.prepareStatement(sql);
		   ps.setString(1, id);
		   ResultSet rs =ps.executeQuery();
		   rs.next();
		   count=rs.getInt(1);
		   rs.close();
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
	   return count;
   }
   
  
  // �����ȣ ã��
 
   public ArrayList<ZipcodeVO> postfind(String dong)
   {
	   ArrayList<ZipcodeVO> list = new ArrayList<ZipcodeVO>();
	   try
	   {
		   getConnection();
		   String sql="SELECT zipcode,sido,gugun,dong,"
		   		+ "NVL(bunji,' ') "
		   		+ "FROM zipcode "
		   		+ "WHERE dong LIKE '%'||?||'%'";
		   ps= conn.prepareStatement(sql);
		   ps.setString(1, dong);
		   ResultSet rs =ps.executeQuery();
		   while(rs.next())
		   {
			   ZipcodeVO vo = new ZipcodeVO();
			   vo.setZipcode(rs.getString(1));
			   vo.setSido(rs.getString(2));
			   vo.setGugun(rs.getString(3));
			   vo.setDong(rs.getString(4));
			   vo.setBunji(rs.getString(5));
			   list.add(vo);
		   }
		   rs.close();
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
	   
	   return list;
   }
   
   
  
  // �����ȣ �˻����
   
   public int postfindCount(String dong)
   {
	   int count=0;
	   try
	   {
		   getConnection();
		   String sql="SELECT COUNT(*) FROM zipcode "
		   		+ "WHERE dong LIKE '%'||?||'%'";
		   ps= conn.prepareStatement(sql);
		   ps.setString(1, dong);
		   ResultSet rs =ps.executeQuery();
		   rs.next();
		   count=rs.getInt(1);
		   rs.close();
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
	   
	   return count;
   }
   /*
    * 
    * 
ID
PWD
NAME
SEX
BIRTHDAY
EMAIL
POST
ADDR1
ADDR2
TEL
    */
   
   
   
   
   //ȸ������ - �α��� ó��
   public void memberJoin(MemberVO vo)
   {
	   try
	   {
		   getConnection();
		   String sql="INSERT INTO food_member VALUES(" 
				   +"?,?,?,?,?,?,?,?,?,?)";
		   ps=conn.prepareStatement(sql);
		/*   ps.setString(1, vo.getId());
		   ps.setString(2, vo.getPwd());
		   ps.setString(3, vo.getName());
		   ps.setString(4, vo.getSex());
		   ps.setString(5, vo.getBirthday());
		   ps.setString(6, vo.getEmail());
		   ps.setString(7, vo.getPost1()+"-"+vo.getPost2());
		   ps.setString(8, vo.getAddr1());
		   ps.setString(9, vo.getAddr2());
		   ps.setString(10, vo.getTel1()+"-"+vo.getTel2()+"-"+vo.getTel3());*/
		   
		   ps.executeQuery();
		   
		   
	   }catch(Exception ex)
	   {
		 System.out.println(ex.getMessage());   
	   }
	   finally
	   {
		   disConnection();
	   }
   }
   //�α��� ó��
   public String isLogin(String id,String pwd)
   {
	   String result="";
	   try
	   {
		   getConnection();
		   String sql= "SELECT COUNT(*) FROM food_member "
		   		+ "WHERE id=?";
		   ps=conn.prepareStatement(sql);
		   ps.setString(1, id);
		   ResultSet rs= ps.executeQuery();
		  rs.next();
		  int count=rs.getInt(1);
		  rs.close();
		  if(count==0)
		  {
			  //���̵� ����X
			  result="NOID";
			  
		  }	  
		  else
	     {
			  // ���̵� ����0
			  sql ="SELECT pwd,name FROM food_member "
			  		+ "WHERE id=?";
			  ps= conn.prepareStatement(sql);
			  ps.setString(1, id);
			 rs=ps.executeQuery();
			 rs.next();
			 String db_pwd =rs.getString(1);
			 String name =rs.getString(2);
			 rs.close();
			 
			 if(db_pwd.equals(pwd))
					 {
				       //login
				 result=name;
					 }
			 else
			 {
				  //��й�ȣ�� Ʋ���ϴ�.
				  result="NOPWD";
			 }
		  }
		
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
	   
	   return result;
   }
}
