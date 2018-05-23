package com.sist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.*;

public class CompanyDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static void deleteCompanyBookmark(String userid, String companycode) {
		SqlSession session = null;	
		try {
			session = ssf.openSession(true);
			Map map = new HashMap<String, String>();
			map.put("userid", userid);
			map.put("companycode", companycode);
			session.delete("deleteCompanyBookmark", map);	
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static void insertCompanyBookmark(String userid, String companycode) {
		SqlSession session = null;	
		try {
			session = ssf.openSession(true);
			Map map = new HashMap<String, String>();
			map.put("userid", userid);
			map.put("companycode", companycode);
			session.insert("insertCompanyBookmark", map);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static boolean searchCompanyBookmark(String userid, String companycode) {
		SqlSession session = null;
		boolean flag = false;
		try {
			session = ssf.openSession();
			Map map = new HashMap<String, String>();
			map.put("userid", userid);
			map.put("companycode", companycode);
			int count = session.selectOne("searchCompanyBookmark", map);
			if (count != 0)
				flag = true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return flag;
	}

	public static void insertScore(Company_ScoreVO vo) {
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.insert("insertScore", vo);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static RecruitmentVO recruitmentDetail(String recruitmentCode) {
		RecruitmentVO vo = null;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("recruitmentDetail", recruitmentCode);
			vo.setContent(vo.getContent().replaceAll("기업회원 가입하고 수정하기", ""));
			vo.setContent(vo.getContent().replaceAll("잡플래닛", "Ready&Start"));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	public static List<RecruitmentVO> recruitmentList(String companyCode) {
		List<RecruitmentVO> list = null;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("recruitmentList", companyCode);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static CompanyVO companyDetail(String companyCode) {
		CompanyVO vo = null;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("companyDetail", companyCode);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	public static List<String> categoryName() {
		List<String> list = new ArrayList<String>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("categoryName");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static List<Integer> categoryCount() {
		List<Integer> list = new ArrayList<Integer>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("categoryCount");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static List<CompanyVO> searchList(String strSearch, String strCate, String curPage) {
		List<CompanyVO> list = new ArrayList<CompanyVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();

			int start, end;
			start = (Integer.parseInt(curPage) - 1) * 10 + 1;
			end = Integer.parseInt(curPage) * 10;

			Map map = new HashMap();
			map.put("strSearch", strSearch);
			map.put("strCate", strCate);
			map.put("start", start);
			map.put("end", end);
			list = session.selectList("searchList", map);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static int totalPage(String strSearch, String strCate) {
		SqlSession session = null;
		int count = 0;
		try {
			session = ssf.openSession();

			Map map = new HashMap<String, String>();
			map.put("strSearch", strSearch);
			map.put("strCate", strCate);
			count = session.selectOne("totalPage", map);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return count;
	}
}
