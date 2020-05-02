package board.com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import board.com.model.BMemberBean;

public class BMemberDao {

	private static SqlSessionFactory sqlSessionFactory;
	static {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	public static boolean memberIdCheck(String id) {
		SqlSession sqlSession = null;
		String rsId = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			rsId = sqlSession.selectOne("memberIdCheck", id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(sqlSession != null) sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return rsId == null || rsId.equals("") ? false : true; 
	}
	public static void insertMember(BMemberBean bean) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("insertMember", bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			try {
				if(sqlSession != null) sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}
}
