package carrot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static carrot.common.jdbc.JDBCTemplate.*;

import carrot.vo.Location;

public class LocationDao {
	public List<Location> selectLocation(Connection connection) {
		List<Location> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String query = "SELECT * FROM LOCATION";

			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String phamNo = rs.getString("pham_no");
				String locationGu = rs.getString("location_gu");
				String locationAddress = rs.getString("location_address");
				String locationLatitude = rs.getString("location_latitude");
				String locationLongtitude = rs.getString("location_longitude");

				Location location = new Location(phamNo, locationGu, locationAddress, locationLatitude, locationLongtitude);
				list.add(location);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}
	
	public Location findLocationByNo(Connection connection,String no) {
		Location location = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM LOCATION WHERE PHAM_NO =?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()==true) {
				location = new Location();
				location.setPham_no(rs.getString("pham_no"));
				location.setLocation_gu(rs.getString("location_gu"));
				location.setLocation_address(rs.getString("location_address"));
				location.setLocation_latitude(rs.getString("location_latitude"));
				location.setLocation_longtitude(rs.getString("location_longitude"));
				
			}
		} catch (Exception e) {
		}finally {
			close(pstmt);
			close(rs);
		}
		return location;
		
	}
		
	//위치테이블에 데이터를 입력(추가)하는 메소드
	public int insertLocation(Connection connection, Location location) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO LOCATION (PHAM_NO, LOCATION_GU, LOCATION_ADDRESS, LOCATION_LATITUDE, LOCATION_LONGITUDE) VALUES (?,?,?,?,?)";
		
		try {
			pstmt = connection.prepareCall(query);
			pstmt.setString(1, location.getPham_no());
			pstmt.setString(2, location.getLocation_gu());
			pstmt.setString(3, location.getLocation_address());
			pstmt.setString(4, location.getLocation_latitude());
			pstmt.setString(5, location.getLocation_longtitude());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	//위치테이블의 모든 데이터를 삭제하는 메소드
	public int deleteAll(Connection connection) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		
		try {
			query = "DELETE FROM LOCATION";
			pstmt = connection.prepareStatement(query);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		}finally {
			close(pstmt);
		}
		return result;
	}
	
//	public static void main(String[] args) {
//	Connection connection = getConnection();
//	LocationDao LocationDao = new LocationDao(connection);
//
//	List<Location> test = LocationDao.selectLocation();
//	System.out.println(test);
}