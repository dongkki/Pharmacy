package carrot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static carrot.common.jdbc.JDBCTemplate.*;

//import carrot.common.jdbc.JDBCTemplate;
import carrot.vo.Drug;

public class DrugDao {

	public List<Drug> findAll(Connection conn) {
		List<Drug> list = new ArrayList<Drug>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT * FROM DRUG";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Drug drug = new Drug();
				drug.setDrugCode(rs.getString("drug_code"));
				drug.setDrugName(rs.getString("drug_name"));
				drug.setDrugEffect(rs.getString("drug_effect"));
				drug.setDrugUsage(rs.getString("drug_usage"));
				drug.setDrugPrecautions(rs.getString("drug_precautions"));
				drug.setDrugHowStore(rs.getString("drug_how_store"));
				drug.setDrugManufactoror(rs.getString("drug_manufactoror"));
				drug.setDrugPrice(rs.getString("drug_Price"));
				
				list.add(drug);
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

	public Drug findDrugByName(Connection connection, String name) {
		Drug drug = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT * FROM DRUG WHERE DRUG_NAME=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			if(rs.next() == true) {
				drug = new Drug();
				drug.setDrugCode(rs.getString("DRUG_CODE"));
				drug.setDrugName(rs.getString("DRUG_NAME"));
				drug.setDrugManufactoror(rs.getString("DRUG_MANUFACTOROR"));
				drug.setDrugEffect(rs.getString("DRUG_EFFECT"));
				drug.setDrugUsage(rs.getString("DRUG_USAGE"));
				drug.setDrugHowStore(rs.getString("DRUG_HOW_STORE"));
				drug.setDrugPrecautions(rs.getString("DRUG_PRECAUTIONS"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return drug;
	}
	
//	public static void main(String[] args) {
//		Connection connection = JDBCTemplate.getConnection();
//		DrugDao dao = new DrugDao();
//
//		Drug test = dao.findDrugByName(connection, "모더나");
//		List<Drug> test2 = dao.findAll(connection);
//		System.out.println(test);
//		System.out.println(test2);
//	}
}

























