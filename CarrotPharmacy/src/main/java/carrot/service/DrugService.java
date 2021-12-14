package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DrugDao;
import carrot.vo.Drug;

public class DrugService {
	private static DrugDao dao = new DrugDao();

	public List<Drug> getBoardList() {
		Connection connection = getConnection();
		List<Drug> list = dao.findAll(connection);
		close(connection);
		return list;
	}
	
//	public static List<Drug> selectDrugName(String searchDrugName){
//		drugDao.setConn(conn);
//		return drugDao.selectDrugName(searchDrugName);
//	}
//	
//	public static List<Drug> selectDrugManu(String searchDrugManu){
//		drugDao.setConn(conn);
//		return drugDao.selectDrugName(searchDrugManu);
//	}
}
