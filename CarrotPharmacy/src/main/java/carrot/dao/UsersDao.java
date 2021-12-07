package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import carrot.vo.Users;

public class UsersDao {
	
	public Users findUserById(Connection connection, String id) {
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

	public int updatePassword(Connection connection, String id, String password ) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		try {
			query = "UPDATE USERS SET USER_PW=? WHERE USER_ID=?";
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, password);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
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
	
	
	
//	public static void main(String[] args) {
//	Connection connection = JDBCTemplate.getConnection();
//	UsersDAO usersDao = new UsersDAO();
//	
//	Users users1 = usersDao.findUserById(connection,"users_khtest");
//	System.out.println(users1+"테스트1");
//	
//	Users user = new Users("users_khtest1", "0000", "김길동", "010-5766-7979");
//	usersDao.insertUser(connection,user);
//	Users users2 = usersDao.findUserById(connection,"users_khtest1");
//	System.out.println(users2+"테스트2");
//	int result = usersDao.updatePassword(connection, "users_khtest1", "1234");
//	commit(connection);
//	Users users3 = usersDao.findUserById(connection,"users_khtest1");
//	System.out.println(users3+"테스트4");
//	int result1 = usersDao.deleteUser(connection, "users_khtest1");
//	System.out.println(result1);
//	commit(connection);
//	}
}
