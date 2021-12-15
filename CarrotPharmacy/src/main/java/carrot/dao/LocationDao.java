package carrot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static carrot.common.jdbc.JDBCTemplate.*;

import carrot.common.jdbc.JDBCTemplate;
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
				String locationSummary = rs.getString("location_summary");
				String locationLatitude = rs.getString("location_latitude");
				String locationLongtitude = rs.getString("location_longitude");

				Location location = new Location(phamNo, locationGu, locationAddress, locationSummary, locationLatitude,
						locationLongtitude);
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
				location.setLocation_summary(rs.getString("location_summary"));
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
	
	public static void main(String[] args) {
	Connection connection = JDBCTemplate.getConnection();
	LocationDao LocationDao = new LocationDao();

	Location test = LocationDao.findLocationByNo(connection, "999999");
	System.out.println(test);
}

}
