package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.commit;
import static carrot.common.jdbc.JDBCTemplate.getConnection;
import static carrot.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import carrot.dao.PharmacyDao;
import carrot.vo.Pharmacy;

public class PharmacyService {
	private PharmacyDao dao = new PharmacyDao();
	
	
	public  Pharmacy findPharmacyByNo(String no) {
		Connection connection = getConnection();
		Pharmacy pham = dao.findPharmacyByNo(connection, no);
		close(connection);
		return pham;
	}
	
	public  ArrayList<Pharmacy> findPharmacyByName(String name) {
		Connection connection = getConnection();
		ArrayList<Pharmacy> phams = dao.findPharmacyByName(connection, name);
		close(connection);
		return phams;
	}
	
	public int save(Pharmacy pham) {
		int result = 0;
		Connection connection = getConnection();
		
		if(pham.getPham_no() != null) {
			result = dao.insertPham(connection, pham);
		}
		
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		
		return result;
	}
	
	
	public int updateTell(String no, String tell) {
		Connection connection = getConnection();
		int result = dao.updateTell(connection, no, tell);
		
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		return result;
	}
	
	public boolean isDuplicated(String phamNo) {
		Connection conn = getConnection();
		Pharmacy pham = dao.findPharmacyByNo(conn, phamNo);
		close(conn);
		
		if(pham != null) {
			return true;
		}else {
			return false;
		}
	}

}

