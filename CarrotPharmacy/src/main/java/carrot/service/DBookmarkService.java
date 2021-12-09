package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import carrot.dao.DBookmarkDao;
import carrot.vo.DBookmark;


public class DBookmarkService {
	private static DBookmarkDao dao = new DBookmarkDao();
	
	//의약품 북마크 전체 조회 메소드
	public static ArrayList<DBookmark> searchAll(String id){
		Connection connection = getConnection();
		ArrayList<DBookmark> dBookmark = dao.searchAll(connection, id);
		close(connection);
		return dBookmark;
	}
	
	
	//의약품 북마크 추가 메소드
	public static int addDBookmark(String drugCode, String id, String score) {
		Connection connection = getConnection();
		int dBookmark = dao.addDBookmark(connection, drugCode, id, score);
		close(connection);
		return dBookmark;
	}
	
	
	public static void main(String[] args) {
		ArrayList<DBookmark> test = DBookmarkService.searchAll("users_khtest");
		//int test = DBookmarkService.addDBookmark("1", "users_khtest", "10.0");
		System.out.println(test);
	}
	
	/*	public Pharmacy findPharmacyByNo(String no) {
		Connection connection = getConnection();
		Pharmacy pham = dao.findPharmacyByNo(connection, no);
		close(connection);
		return pham;
	}*/
}
