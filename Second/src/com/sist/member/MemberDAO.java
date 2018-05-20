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
	 
	//아이디 중복체크 기능
	 public int idCheck(String id) 
	   {
		   
		   SqlSession session=null;//connection연결=>sql문장수행 
		   int count=0;
		   try
		   {
			   
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
  
	 //아이디 중복체크 기능
    	 
   public int idCheck(String id)
   {
	   int count=0;
	   try
	   {
		   //주소 값 얻기
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
   
  
  // 우편번호 찾기
 
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
   
   
  
  // 우편번호 검색기능
   
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
   
   
   
   
   //회원가입 - 로그인 처리
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
   //로그인 처리
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
			  //아이디가 존재X
			  result="NOID";
			  
		  }	  
		  else
	     {
			  // 아이디가 존재0
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
				  //비밀번호가 틀립니다.
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
