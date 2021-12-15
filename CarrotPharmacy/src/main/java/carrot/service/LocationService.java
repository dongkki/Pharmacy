package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.LocationDao;
import carrot.vo.Location;

public class LocationService {
	private LocationDao dao = new LocationDao();

	public List<Location> selectAll(){
		Connection connection = getConnection();
		List<Location> locations = dao.selectLocation(connection);
		return locations;
	}
	public Location findLocationByNo(String no) {
		Connection connection = getConnection();
		Location location = dao.findLocationByNo(connection, no);
		return location;
	}
	
}
