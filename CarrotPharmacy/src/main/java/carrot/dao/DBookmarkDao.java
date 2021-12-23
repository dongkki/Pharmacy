package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carrot.vo.DBookmark;

public class DBookmarkDao {
	
	//의약품 북마크 전체 조회 메소드
	public List<DBookmark> searchAll(Connection connection, String id) {
		DBookmark dBookmark = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM DBOOK_MARK JOIN USERS USING(USER_ID) WHERE USER_ID LIKE ?";
		ArrayList<DBookmark> dBookmarks = new ArrayList<>();
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
				dBookmark = new DBookmark();
				dBookmark.setDrug_name(rs.getString("DRUG_NAME"));
				dBookmark.setDrug_code(rs.getString("DRUG_CODE"));
				dBookmark.setDrug_manufactoror(rs.getString("DRUG_MANUFACTOROR"));
				dBookmark.setDrug_effect(rs.getString("DRUG_EFFECT"));
				dBookmarks.add(dBookmark);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return dBookmarks;
	}

	
	//의약품 북마크 추가 메소드
	public int addDBookmark(Connection connection, DBookmark dbookmark) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO DBOOK_MARK VALUES (?, ?, ?, ?, ?)";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dbookmark.getUser_id());
			pstmt.setString(2, dbookmark.getDrug_code());
			pstmt.setString(3, dbookmark.getDrug_name());
			pstmt.setString(4, dbookmark.getDrug_manufactoror());
			pstmt.setString(5, dbookmark.getDrug_effect());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	//의약품 북마크 삭제 메소드
	public int deleteDBookmark(Connection connection, String drugname) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM DBOOK_MARK WHERE DRUG_NAME = ?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, drugname);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
