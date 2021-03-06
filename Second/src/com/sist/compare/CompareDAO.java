package com.sist.compare;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CompareDAO {

	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static List<CompareVO> compareData(String searchValue)
	{
		List<CompareVO> list=new ArrayList<CompareVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("compareData", searchValue);
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
	
	public static Compare_ResultVO resultData(int companyCode){
		Compare_ResultVO vo = null;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			//System.out.println("DAO CompanyCode : "+companyCode);
			vo = session.selectOne("resultData", companyCode);
			//System.out.println("DAO vo : " + vo.getCompanyCode());
		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

}
