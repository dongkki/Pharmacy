package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import carrot.vo.SearchPham;

public class SearchPhamDao {
	
	public ArrayList<SearchPham> searchPhamList(Connection connection, String name, String gu) {
		SearchPham phamList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SearchPham> phamLists = new ArrayList<SearchPham>();
		String query = "SELECT PHAM_NO,PHAM_NAME,PHAM_TELL,LOCATION_GU,LOCATION_ADDRESS,LOCATION_LATITUDE,LOCATION_LONGITUDE "
				+ "FROM PHARMACY "
				+ "JOIN LOCATION USING(PHAM_NO) "
				+ "WHERE PHAM_NAME LIKE ?  AND LOCATION_GU=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1,"%"+ name+"%");
			pstmt.setString(2, gu);
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
			phamList = new SearchPham();
			phamList.setPham_no(rs.getString("PHAM_NO"));
			phamList.setPham_name(rs.getString("PHAM_NAME"));
			phamList.setPham_tell(rs.getString("PHAM_TELL"));
			phamList.setLocation_gu(rs.getString("LOCATION_GU"));
			phamList.setLocation_address(rs.getString("LOCATION_ADDRESS"));
			phamList.setLocation_lat(rs.getString("LOCATION_LATITUDE"));
			phamList.setLocation_lon(rs.getString("LOCATION_LONGITUDE"));
			phamLists.add(phamList);
			}
		} catch (Exception e) {
		}finally {
			close(pstmt);
			close(rs);
		}
		return phamLists;
	}
	
	public ArrayList<SearchPham> searchPhamHome(Connection connection, String name, String gu) {
		SearchPham phamList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SearchPham> phamLists = new ArrayList<SearchPham>();
		String query = "SELECT PHAM_NO,PHAM_NAME,PHAM_TELL,LOCATION_GU,LOCATION_ADDRESS,LOCATION_LATITUDE,LOCATION_LONGITUDE "
				+ "FROM PHARMACY "
				+ "JOIN LOCATION USING(PHAM_NO) "
				+ "WHERE PHAM_NAME LIKE ? AND LOCATION_GU=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1,"%"+ name+"%");
			pstmt.setString(2, gu);
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
				phamList = new SearchPham();
				phamList.setPham_no(rs.getString("PHAM_NO"));
				phamList.setPham_name(rs.getString("PHAM_NAME"));
				phamList.setPham_tell(rs.getString("PHAM_TELL"));
				phamList.setLocation_gu(rs.getString("LOCATION_GU"));
				phamList.setLocation_address(rs.getString("LOCATION_ADDRESS"));
				phamList.setLocation_lat(rs.getString("LOCATION_LATITUDE"));
				phamList.setLocation_lon(rs.getString("LOCATION_LONGITUDE"));
				phamLists.add(phamList);
			}
		} catch (Exception e) {
		}finally {
			close(pstmt);
			close(rs);
		}
		return phamLists;
	}
	
	public SearchPham searchPhamByNo(Connection connection, String no) {
		SearchPham pham = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT PHAM_NO,PHAM_NAME,PHAM_TELL,LOCATION_GU,LOCATION_ADDRESS,LOCATION_LATITUDE,LOCATION_LONGITUDE "
				+ "FROM PHARMACY "
				+ "JOIN LOCATION USING(PHAM_NO) "
				+ "WHERE PHAM_NO =?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1,no);
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
			pham = new SearchPham();
			pham.setPham_no(rs.getString("PHAM_NO"));
			pham.setPham_name(rs.getString("PHAM_NAME"));
			pham.setPham_tell(rs.getString("PHAM_TELL"));
			pham.setLocation_gu(rs.getString("LOCATION_GU"));
			pham.setLocation_address(rs.getString("LOCATION_ADDRESS"));
			pham.setLocation_lat(rs.getString("LOCATION_LATITUDE"));
			pham.setLocation_lon(rs.getString("LOCATION_LONGITUDE"));
			}
		} catch (Exception e) {
		}finally {
			close(pstmt);
			close(rs);
		}
		return pham;
	}

}
