package com.sist.member;

import java.io.Reader;
import java.sql.ResultSet;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.tools.ant.util.SymbolicLinkUtils;
import org.mindrot.jbcrypt.BCrypt;

import com.sist.pass_info.PassVO;
import com.sist.vo.RecruitmentVO;

public class MemberDAO {
	private static SqlSessionFactory ssf;

	static {
		try {
			// XML읽기
			Reader reader = Resources.getResourceAsReader("Config.xml");
			// Config.xml => mapper.xml
			// 파싱요청
			ssf = new SqlSessionFactoryBuilder().build(reader);
			// ssf => getConnection(),disConnection()
			// Spring,MyBatis ==> classpath:SRC
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	public static List<RecruitmentVO> recruitmentList(String userid) {
		List<RecruitmentVO> list = null;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("recruitmentList2", userid);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static List<String> categoryName() {
		List<String> list = new ArrayList<String>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("categoryname2");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static MemberVO findData(String userId) {
		SqlSession session = null;
		MemberVO vo = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("findData", userId);
		} catch (Exception ex) {

		} finally {
			if (session != null)
				session.close();
		}

		return vo;
	}

	// id중복

	public int idCheck(String userId) {
		SqlSession session = null;
		int count = 0;
		try {
			session = ssf.openSession();
			count = session.selectOne("idCheck", userId);
		} catch (Exception ex) {
			System.out.println("idCheck >>> " + ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		System.out.println("count >>> " + count);
		return count;
	}

	// 회원가입
	public static void memberJoin(MemberVO vo) {
		/*
		 * System.out.println("getUserId >>> " + vo.getUserId());
		 * System.out.println("getpassword >>> " + vo.getPassword());
		 * System.out.println("getName >>> " + vo.getName());
		 * System.out.println("getEmailAddress >>> " + vo.getEmailAddress());
		 * System.out.println("getFavoriteCategory >>> " + vo.getFavoriteCategory());
		 * System.out.println("getPostAddress >>> " + vo.getPostAddress());
		 * System.out.println("getRoadnameAddress >>> " + vo.getRoadnameAddress());
		 * System.out.println("getDetailAddress >>> " + vo.getDetailAddress());
		 * System.out.println("getUserLevel >>> " + vo.getUserLevel());
		 * System.out.println("getIsLogin >>> " + vo.getIsLogin());
		 */
		
		vo.setPassword(BCrypt.hashpw(vo.getPassword(), BCrypt.gensalt()));
		SqlSession session = null;
		try {
			session = ssf.openSession(true);			
			session.insert("memberJoin", vo);

		} catch (Exception ex) {
			System.out.println("memberJoin >>> " + ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	// 로그인 처리

	public static String isLogin(String userId, String password) {
		String result = "";
		int id_count = 0;
		SqlSession session = null;// Connection
		
		try {
			session = ssf.openSession();
			id_count = session.selectOne("isLogin_id", userId);
			if (id_count == 0) {
				result = "NOID";
				System.out.println("로그인 실패");

			} else {

				MemberVO vo = new MemberVO();
				vo = session.selectOne("isLogin_pwd", userId);
				//System.out.println(vo.getPassword());
				
				if (BCrypt.checkpw(password,vo.getPassword())) {
					result = vo.getUserId();
					System.out.println("로그인 성공");

				} else {
					result = "NOPW";
					System.out.println("로그인 실패");
				}
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return result;
	}

	public static void changeName(String userid,String name) {
		SqlSession session = null;
		try {
			Map map = new HashMap();
			map.put("userid", userid);
			map.put("name", name);
			session = ssf.openSession(true);
			session.update("changeName", map);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static void changeEmailAddress(String userid,String emailAddress) {
		SqlSession session = null;
		try {
			Map map = new HashMap();
			map.put("userid", userid);
			map.put("emailAddress", emailAddress);
			session = ssf.openSession(true);
			session.update("changeEmailAddress", map);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static void changeFavoriteCategory(String userid,int favoriteCategory) {
		SqlSession session = null;
		try {
			Map map = new HashMap();
			map.put("userid", userid);
			map.put("favoriteCategory", favoriteCategory);
			session = ssf.openSession(true);
			session.update("changeFavoriteCategory", map);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	public static void changePW(String userid, String pw) {
		SqlSession session = null;
		try {
			Map map = new HashMap();
			map.put("userid", userid);
			map.put("password", BCrypt.hashpw(pw, BCrypt.gensalt()));
			session = ssf.openSession(true);
			session.update("changePW", map);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	public static void withdrawal(String userid) {
		SqlSession session = null;
		try {
	
			session = ssf.openSession(true);
			session.delete("withdrawal", userid);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

}

// 회원가입 - 로그인 처리

// 로그인 처리
/*
 * public static List<MusicChartVO> musicAllData(Map map){ List<MusicChartVO>
 * list = new ArrayList<MusicChartVO>(); SqlSession session= null; try { session
 * = ssf.openSession(); list = session.selectList("musicAllData",map); }catch
 * (Exception e) { System.out.println(e.getMessage()); }finally {
 * if(session!=null) session.close(); } return list; }
 */
