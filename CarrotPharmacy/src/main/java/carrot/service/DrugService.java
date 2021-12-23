package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DrugDao;
import carrot.vo.Drug;

public class DrugService {
	private static DrugDao dao = new DrugDao();
	private static Connection connection;

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

	public List<Drug> selectDrugName(String drugname) {
		Connection connection = getConnection();
		List<Drug> result = dao.selectDrugName(connection, drugname);
		return result;
	}

	public List<Drug> selectDrugManu(String drugManu) {
		Connection connection = getConnection();
		List<Drug> result = dao.selectDrugManu(connection, drugManu);
		return result;
	}
	
	public List<Drug> selectDrugEffect(String effect) {
		Connection connection = getConnection();
		List<Drug> result = dao.selectDrugEffect(connection, effect);
		return result;
	}

	// 의약품 정보 테이블의 내용들을 전부 삭제해 초기화 하는 메소드
	public int init() {
		connection = getConnection();
		int result = dao.init(connection);
		return result;
	}

	// 의약품 정보 테이블의 내용을 최신버전으로 업데이트 하는 메소드
	public int add(Drug drug) {
		int result = 0;

		if (drug.getDrugCode() != null) {
			result = dao.insertDrug(connection, drug);
		}

		if (result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}

		return result;
	}

	public void closeConn() {
		close(connection);
	}

}
