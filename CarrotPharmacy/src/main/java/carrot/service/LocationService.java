package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.LocationDao;
import carrot.vo.Location;

public class LocationService {
	
	private LocationDao dao = null;
	private Connection conn = null;
	
	public LocationService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		dao = new LocationDao(conn);
	}

	public List<Location> selectAll(){
		dao.setConn(conn);
		return dao.locationSelect();
	}
	
}
