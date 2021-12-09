package carrot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import static carrot.common.jdbc.JDBCTemplate.*;
import carrot.vo.DBookmark;

public class DBookmarkDao {
	
	//의약품 북마크 전체 조회 메소드
	public ArrayList<DBookmark> searchAll(Connection connection, String id) {
		DBookmark dBookmark = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM DBOOK_MARK JOIN DRUG USING(DRUG_CODE) JOIN USERS USING(USER_ID) WHERE USER_ID LIKE ?";
		ArrayList<DBookmark> dBookmarks = new ArrayList<DBookmark>();
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
				dBookmark = new DBookmark();
				dBookmark.setDrug_code(rs.getString("DRUG_CODE"));
				dBookmark.setUser_id(rs.getString("USER_ID"));
				dBookmark.setDbook_score(rs.getString("DBOOK_SCORE"));
				dBookmarks.add(dBookmark);
			}
			if(rs.next() == true) {
		
			}
		} catch (Exception e) {
			
		} finally {
			close(pstmt);
			close(rs);
		}
		return dBookmarks;
	}

	
	//의약품 북마크 추가 메소드
	//drugCode가 기존에 있는 값이 들어오는 경우(이전에 북마크했던 의약품을 다시 북마크 하려할 때) 북마크 값을 덮어 씌울지 if else문 작성해야함.
	public int addDBookmark(Connection connection, String drugCode, String id, String score) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO DBOOK_MARK (DRUG_CODE, USER_ID, DBOOK_SCORE) VALUES (?, ?, ?)";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, drugCode);
			pstmt.setString(2, id);
			pstmt.setString(3, score);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	//의약품 북마크 점수만 수정해서 업데이트하는 메소드
	public int updateScore(Connection connection, String drugCode, String score) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE DBOOK_MARK SET DBOOK_SCORE = ? WHERE DRUG_CODE = ?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, score);
			pstmt.setString(2, drugCode);
			result = pstmt.executeUpdate();
		} catch (Exception e) {

		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	//의약품 북마크 삭제 메소드
	public int deleteDBookmark(Connection connection, String drugCode, String id) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM DBOOK_MARK WHERE DRUG_CODE = ? AND USER_ID = ?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, drugCode);
			pstmt.setString(2, id);
			result = pstmt.executeUpdate();
		} catch (Exception e) {

		}finally {
			close(pstmt);
		}
		return result;
	}

/*
	public static void main(String[] args) {
		Connection connection = getConnection();
		DBookmarkDao dBookmarkDao = new DBookmarkDao();

		//ArrayList<DBookmark> test = dBookmarkDao.searchAll(connection, "users_khtest");
		//int test = dBookmarkDao.addDBookmark(connection, "2", "users_khtest", "10.0");
		//int test = dBookmarkDao.deleteDBookmark(connection, "1", "users_khtest");
		//int test =  dBookmarkDao.updateScore(connection, "1", "10.0");
		//commit(connection);	//을 해야지만 데이터가 DB에 저장된다. 안하면 DB에는 저장 안됨.
		System.out.println(test);
	}
*/
}
