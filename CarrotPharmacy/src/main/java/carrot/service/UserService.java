package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;

import carrot.dao.UsersDao;
import carrot.vo.PhamUser;
import carrot.vo.Users;

public class UserService {

	private UsersDao dao = new UsersDao();

	public Users login(String id, String pwd) {
		Users user = fineUserId(id);
		
		if(user != null && user.getUser_pw().equals(pwd) == true) {
			return user;
		}else {
			return null;
		}
	}
	
	public Users fineUserId(String id) {
		Connection connection = getConnection();
		Users user = dao.findUserId(connection, id);
		close(connection);
		return user;
	}  

	public int enrollUser(Users user) {
		int result = 0;
		Connection connection = getConnection();
		
		result = dao.insertUser(connection, user);
		
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		
		return result;
	}
	
	public boolean isDuplicated(String id) {
		Connection conn = getConnection();
		Users member = dao.findUserId(conn, id);
		close(conn);

		if (member != null) {
			return true;
		} else {
			return false;
		}
	}
}
