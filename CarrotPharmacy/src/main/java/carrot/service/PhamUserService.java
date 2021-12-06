package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;


import carrot.dao.PhamUserDao;
import carrot.vo.PhamUser;

public class PhamUserService {

	private PhamUserDao pud = new PhamUserDao();

	public PhamUser login(String id, String pwd) {
		PhamUser user = fineUserId(id);
		
		if(user != null && user.getPham_user_pw().equals(pwd) == true) {
			return user;
		}else {
			return null;
		}
	}
	
	public PhamUser fineUserId(String id) {
		Connection connection = getConnection();
		PhamUser user = pud.fineUserId(connection, id);
		close(connection);
		return user;
	}

}
