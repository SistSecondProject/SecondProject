package com.sist.community;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.community.NoticeVO;

public class NoticeDAO {

	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// 목록
	public static List<NoticeVO> noticeListData(Map map) {
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("noticeList", map);

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static int noticeTotalPage() {
		int total = 0;
		SqlSession session = null;

		try {
			session = ssf.openSession();
			total = session.selectOne("noticeTotalPage");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return total;
	}

	// 글쓰기
	public static List<NoticeVO> noticeInsertData(NoticeVO vo) {
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.insert("noticeInsert", vo);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// 내용보기
	public static NoticeVO noticeContentData(int no) {
		NoticeVO vo = null;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			session.update("HitIncrement", no);
			session.commit();
			vo = session.selectOne("noticeContent", no);

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	// 수정
	public static NoticeVO noticeUpdateData(int no) {
		NoticeVO vo = new NoticeVO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("noticeContent", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	public static List<NoticeVO> noticeUpdate(NoticeVO vo) {
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.update("noticeUpdate", vo);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// 삭제
	public static void noticeDelete(int no) // model에서 처리
	{
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.delete("noticeDelete", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
}
