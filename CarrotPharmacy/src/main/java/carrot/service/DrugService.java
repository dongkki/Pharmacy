package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DrugDao;
import carrot.vo.Drug;

public class DrugService {
	private static DrugDao dao = new DrugDao();

	public List<Drug> getDrugList() {
		Connection connection = getConnection();
		List<Drug> list = dao.findAll(connection);
		close(connection);
		return list;
	}
	
	public Drug findDrugByName(String name) {
		Connection connection = getConnection();
		Drug drug = dao.findDrugByName(connection, name);
		return drug;
	}
	
}
