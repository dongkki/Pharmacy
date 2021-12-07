package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import carrot.vo.PhamUser;

public class PhamUserDao {
	
	public PhamUser fineUserId(Connection conn, String id) {
		PhamUser user = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM PHAM_USER WHERE PHAM_USER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next() == true) {
				user = new PhamUser();
				user.setPham_id(rs.getString("PHAM_USER_ID"));
				user.setPham_no(rs.getString("PHAM_NO"));
				user.setPham_user_pw(rs.getString("PHAM_USER_PW"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return user;
	}
	
	public int insertUser(Connection connection, PhamUser user) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO PHAM_USER VALUES(?,?,?)";
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, user.getPham_id());
			pstmt.setString(2, user.getPham_no());
			pstmt.setString(3, user.getPham_user_pw());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
}













