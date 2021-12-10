package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import carrot.vo.Users;

public class UsersDao {
	
	public Users findUserId(Connection connection, String id) {
		Users users = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM USERS WHERE USER_ID =?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()==true) {
			users = new Users();			
			users.setUser_id(rs.getString("USER_ID"));
			users.setUser_pw(rs.getString("USER_PW"));
			users.setUser_name(rs.getString("USER_NAME"));
			users.setUser_tell(rs.getString("USER_TELL"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return users;
	}
	
	public int insertUser(Connection connection, Users user) {
		int result =0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO USERS (USER_ID, USER_PW, USER_NAME, USER_TELL)"
					 + " VALUES(?,?,?,?)";
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_pw());
			pstmt.setString(3, user.getUser_name());
			pstmt.setString(4, user.getUser_tell());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int updateUser(Connection connection, Users user) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		try {
			query = "UPDATE USERS SET USER_NAME=?, USER_TELL=?, USER_PW=? WHERE USER_ID=?";
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, user.getUser_name());
			pstmt.setString(2, user.getUser_tell());
			pstmt.setString(3, user.getUser_pw());
			pstmt.setString(4, user.getUser_id());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int deleteUser(Connection connection,String id) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		try {
			query = "DELETE FROM USERS WHERE USER_ID=?";
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
		
	}
}
