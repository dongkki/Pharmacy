package carrot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static carrot.common.jdbc.JDBCTemplate.*;
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
	
//	public List<Drug> selectDrugName(String searchDrugName) {
//		List<Drug> list = new ArrayList<Drug>();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			String sql = prop.getProperty("selectDrugName");
//
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, "%" + searchDrugName + "%");
//			rs = pstmt.executeQuery();
//
//			while (rs.next() == true) {
//				String drugCode = rs.getString("drug_code");
//				String drugName = rs.getString("drug_name");
//				String drugEffect = rs.getString("drug_effect");
//				String drugUsage = rs.getString("drug_usage");
//				String drugPrecaution = rs.getString("drug_precautions");
//				String drugHowStore = rs.getString("drug_how_store");
//				String drugManufactoror = rs.getString("drug_manufactoror");
//				String drugPrice = rs.getString("drug_price");
//
//				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
//						drugManufactoror, drugPrice);
//				list.add(drug);
//			}
//			return list;
//		} catch (Exception e) {
//			e.printStackTrace();
//			try {
//				close(rs);
//				close(pstmt);
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//		return list;
//	}
//
//	public List<Drug> selectDrugManu(String searchDrugManu) {
//		List<Drug> list = new ArrayList<Drug>();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			String sql = prop.getProperty("searchDrugManu");
//
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, "%" + searchDrugManu + "%");
//			rs = pstmt.executeQuery();
//
//			while (rs.next() == true) {
//				String drugCode = rs.getString("drug_code");
//				String drugName = rs.getString("drug_name");
//				String drugEffect = rs.getString("drug_effect");
//				String drugUsage = rs.getString("drug_usage");
//				String drugPrecaution = rs.getString("drug_precautions");
//				String drugHowStore = rs.getString("drug_how_store");
//				String drugManufactoror = rs.getString("drug_manufactoror");
//				String drugPrice = rs.getString("drugPrice");
//
//				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
//						drugManufactoror, drugPrice);
//				list.add(drug);
//			}
//			return list;
//		} catch (Exception e) {
//			e.printStackTrace();
//			try {
//				close(rs);
//				close(pstmt);
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//		return list;
//	}

}

























