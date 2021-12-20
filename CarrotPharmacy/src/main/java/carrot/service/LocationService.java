package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.LocationDao;
import carrot.vo.Location;

public class LocationService {
	
	private LocationDao dao = new LocationDao();
	private static Connection connection ;

	public List<Location> selectAll(){
		connection = getConnection();
		List<Location> locations = dao.selectLocation(connection);
		return locations;
	}
	public Location findLocationByNo(String no) {
		Connection connection = getConnection();
		Location location = dao.findLocationByNo(connection, no);
		return location;
	}
	
	//약국정보 테이블의 내용들을 전부 삭제해 초기화 하는 메소드
	public int deleteAll() {
		connection = getConnection();
		int result = dao.deleteAll(connection);
		return result;
	}
	
	//약국정보 테이블의 내용을 최신버전으로 업데이트 하는 메소드 
	public int add(Location location) {
		int result = 0;
		
		if(location.getPham_no() != null) {
			result = dao.insertLocation(connection, location);
		}
		
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		return result;
	}
	
	public void closeConn() {
		close(connection);
	}
}
