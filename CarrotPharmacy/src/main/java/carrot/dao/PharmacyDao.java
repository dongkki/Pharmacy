package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import carrot.vo.Pharmacy;

public class PharmacyDao {
	
	public Pharmacy findPharmacyByNo(Connection connection, String no) {
		Pharmacy pham = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM PHARMACY WHERE PHAM_NO =?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()==true) {
			pham = new Pharmacy();
			pham.setPham_no(rs.getString("PHAM_NO"));
			pham.setPham_name(rs.getString("PHAM_NAME"));
			pham.setPham_tell(rs.getString("PHAM_TELL"));
			pham.setPham_s_1(rs.getString("PHAM_S_1"));
			pham.setPham_c_1(rs.getString("PHAM_C_1"));
			pham.setPham_s_2(rs.getString("PHAM_S_2"));
			pham.setPham_c_2(rs.getString("PHAM_C_2"));
			pham.setPham_s_3(rs.getString("PHAM_S_3"));
			pham.setPham_c_3(rs.getString("PHAM_C_3"));
			pham.setPham_s_4(rs.getString("PHAM_S_4"));
			pham.setPham_c_4(rs.getString("PHAM_C_4"));
			pham.setPham_s_5(rs.getString("PHAM_S_5"));
			pham.setPham_c_5(rs.getString("PHAM_C_5"));
			pham.setPham_s_6(rs.getString("PHAM_S_6"));
			pham.setPham_c_6(rs.getString("PHAM_C_6"));
			pham.setPham_s_7(rs.getString("PHAM_S_7"));
			pham.setPham_c_7(rs.getString("PHAM_C_7"));
			pham.setPham_s_8(rs.getString("PHAM_S_8"));
			pham.setPham_c_8(rs.getString("PHAM_C_8"));
			}
		} catch (Exception e) {
		}finally {
			close(pstmt);
			close(rs);
		}
		return pham;
	}
	
	public ArrayList<Pharmacy> findPharmacyByName(Connection connection, String name) {
		Pharmacy pham = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM PHARMACY WHERE PHAM_NAME =?";
		ArrayList<Pharmacy> phams = new ArrayList<Pharmacy>();
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
			pham = new Pharmacy();
			pham.setPham_no(rs.getString("PHAM_NO"));
			pham.setPham_name(rs.getString("PHAM_NAME"));
			pham.setPham_tell(rs.getString("PHAM_TELL"));
			pham.setPham_s_1(rs.getString("PHAM_S_1"));
			pham.setPham_c_1(rs.getString("PHAM_C_1"));
			pham.setPham_s_2(rs.getString("PHAM_S_2"));
			pham.setPham_c_2(rs.getString("PHAM_C_2"));
			pham.setPham_s_3(rs.getString("PHAM_S_3"));
			pham.setPham_c_3(rs.getString("PHAM_C_3"));
			pham.setPham_s_4(rs.getString("PHAM_S_4"));
			pham.setPham_c_4(rs.getString("PHAM_C_4"));
			pham.setPham_s_5(rs.getString("PHAM_S_5"));
			pham.setPham_c_5(rs.getString("PHAM_C_5"));
			pham.setPham_s_6(rs.getString("PHAM_S_6"));
			pham.setPham_c_6(rs.getString("PHAM_C_6"));
			pham.setPham_s_7(rs.getString("PHAM_S_7"));
			pham.setPham_c_7(rs.getString("PHAM_C_7"));
			pham.setPham_s_8(rs.getString("PHAM_S_8"));
			pham.setPham_c_8(rs.getString("PHAM_C_8"));
			phams.add(pham);
			}
		} catch (Exception e) {
		}finally {
			close(pstmt);
			close(rs);
		}
		return phams;
	}
	
	public int insertPham(Connection connection, Pharmacy pham) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO PHARMACY (PHAM_NO,PHAM_NAME,PHAM_TELL,PHAM_S_1,PHAM_C_1,PHAM_S_2,PHAM_C_2,PHAM_S_3,PHAM_C_3,"
				+ "PHAM_S_4,PHAM_C_4,PHAM_S_5,PHAM_C_5,PHAM_S_6,PHAM_C_6,PHAM_S_7,PHAM_C_7,PHAM_S_8,PHAM_C_8)"
				+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, pham.getPham_no());
			pstmt.setString(2, pham.getPham_name());
			pstmt.setString(3, pham.getPham_tell());
			pstmt.setString(4, pham.getPham_s_1());
			pstmt.setString(5, pham.getPham_c_1());
			pstmt.setString(6, pham.getPham_s_2());
			pstmt.setString(7, pham.getPham_c_2());
			pstmt.setString(8, pham.getPham_s_3());
			pstmt.setString(9, pham.getPham_c_3());
			pstmt.setString(10, pham.getPham_s_4());
			pstmt.setString(11, pham.getPham_c_4());
			pstmt.setString(12, pham.getPham_s_5());
			pstmt.setString(13, pham.getPham_c_5());
			pstmt.setString(14, pham.getPham_s_6());
			pstmt.setString(15, pham.getPham_c_6());
			pstmt.setString(16, pham.getPham_s_7());
			pstmt.setString(17, pham.getPham_c_7());
			pstmt.setString(18, pham.getPham_s_8());
			pstmt.setString(19, pham.getPham_c_8());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	public int updateTell(Connection connection, String phamNo, String phamTell ) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		try {
			query = "UPDATE PHARMACY SET PHAM_TELL=? WHERE PHAM_NO=?";
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, phamTell);
			pstmt.setString(2, phamNo);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int deletePham(Connection connection, String no) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		try {
			query = "DELETE FROM PHARMACY WHERE PHAM_NO=? ";
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, no);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteAll(Connection connection) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		
		try {
			query = "DELETE FROM PHARMACY";
			pstmt = connection.prepareStatement(query);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
	}
	
/*	public static void main(String[] args) {
		Connection connection = getConnection();
		PharmacyDao PharmacyDao = new PharmacyDao();

		Pharmacy test = PharmacyDao.findPharmacyByNo(connection, "999999");
		System.out.println(test);
		}*/
	
//	public static void main(String[] args) {
//		Connection connection = JDBCTemplate.getConnection();
//		PharmacyDAO parmDao = new PharmacyDAO();
//		
//		Pharmacy pham1 = parmDao.findPharmacyByNo(connection, "999999");
//		System.out.println(pham1+"테스트1");
//		Pharmacy pham2 = new Pharmacy("123456","시험약국","02-123-1234","0900","2000","0900","2000","0900","2000","0900","2000","0900","2000","1000","1500","","","","");
//		parmDao.insertPham(connection, pham2);
//		Pharmacy pham3 = parmDao.findPharmacyByNo(connection, "123456");
//		System.out.println(pham3+"테스트3");
//		commit(connection);
//		System.out.println(parmDao.deletePham(connection, "123456"));
//		
//	}
//	
	
	
}
