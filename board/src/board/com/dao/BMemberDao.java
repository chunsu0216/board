package board.com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import board.com.model.BMemberBean;

public class BMemberDao {

	private static SqlSessionFactory sqlSessionFactory;
	static {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	public static boolean memberIdCheck(String id) { //ID 존재여부
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
	public static void insertMember(BMemberBean bean) { //회원 등록 
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
	public static boolean memberLoginCheck(String id, String password) { //로그인 체크
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			String dbpass = sqlSession.selectOne("memberLoginCheck", id);
			return dbpass != null && dbpass.equals(password.trim());
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
		return false;
	}
}
