package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DBookmarkDao;
import carrot.vo.DBookmark;


public class DBookmarkService {
	private static DBookmarkDao dao = new DBookmarkDao();
	
	//의약품 북마크 전체 조회 메소드
	public List<DBookmark> searchAll(String id){
		Connection connection = getConnection();
		List<DBookmark> dBookmark = dao.searchAll(connection, id);
		close(connection);
		return dBookmark;
	}
	
	
	//의약품 북마크 추가 메소드
	public int addDBookmark(DBookmark dbookmark) {
		Connection connection = getConnection();
		int dBookmark = dao.addDBookmark(connection, dbookmark);
		if(dBookmark > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		return dBookmark;
	}

	// 의약품 북마크 삭제 메소드
	public int deleteDbookmark(String code) {
		Connection connection = getConnection();
		int dBookmark = dao.deleteDBookmark(connection, code);
		if(dBookmark > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		return dBookmark;
	}
	
}
