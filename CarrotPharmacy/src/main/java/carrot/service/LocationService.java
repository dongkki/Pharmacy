package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.LocationDao;
import carrot.vo.Location;

public class LocationService {
	
	private LocationDao ld = null;
	private Connection conn = null;
	
	public LocationService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		ld = new LocationDao(conn);
	}

	public List<Location> selectAll(){
		ld.setConn(conn);
		return ld.locationSelect();
	}
	
}
