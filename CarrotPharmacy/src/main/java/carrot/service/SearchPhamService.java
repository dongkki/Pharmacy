package carrot.service;

import java.sql.Connection;
import java.util.ArrayList;
import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.getConnection;

import carrot.dao.SearchPhamDao;
import carrot.vo.SearchPham;

public class SearchPhamService {
	private SearchPhamDao dao = new SearchPhamDao();
	
	public ArrayList<SearchPham> searchPhamLists(String name, String gu){
		Connection connection = getConnection();
		ArrayList<SearchPham> list = dao.searchPhamList(connection, name, gu);
		close(connection);
		
		return list;
	}
	
	public ArrayList<SearchPham> searchPhamHome(String name, String gu){
		Connection connection = getConnection();
		ArrayList<SearchPham> list = dao.searchPhamHome(connection, name, gu);
		close(connection);
		
		return list;
	}
	
	public SearchPham searchPhamByNo(String no){
		Connection connection = getConnection();
		SearchPham pham = dao.searchPhamByNo(connection, no);
		close(connection);
		
		return pham;
	}
	
}
