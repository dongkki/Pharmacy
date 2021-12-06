package carrot.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static carrot.common.jdbc.JDBCTemplate.*;
import carrot.vo.Location;

public class LocationDao {
	private Connection conn = null;
	private Properties prop = null;

	public LocationDao(Connection conn) {
		this.conn = conn;

		prop = new Properties();
		FileReader fr;
		try {
			fr = new FileReader("resources/carrot-query.properties");
			prop.load(fr);
			fr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public List<Location> locationSelect() {
		List<Location> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String query = prop.getProperty("selectLocation");

			pstmt = conn.prepareStatement(query);
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

}
