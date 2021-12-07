package carrot.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static carrot.common.jdbc.JDBCTemplate.*;
import carrot.vo.Drug;

public class DrugDao {
	private Connection conn = null;
	private Properties prop = null;

	public DrugDao(Connection conn) {
		this.conn = conn;

		prop = new Properties();
		FileReader fr;
		try {
			fr = new FileReader("resources/carrot-query.properties");
			prop.load(fr);
			fr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public List<Drug> selectDrugName(String searchDrugName) {
		List<Drug> list = new ArrayList<Drug>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectDrugName");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + searchDrugName + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("drug_code");
				String drugName = rs.getString("drug_name");
				String drugEffect = rs.getString("drug_effect");
				String drugUsage = rs.getString("drug_usage");
				String drugPrecaution = rs.getString("drug_precautions");
				String drugHowStore = rs.getString("drug_how_store");
				String drugManufactoror = rs.getString("drug_manufactoror");
				String drugPrice = rs.getString("drug_price");

				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
						drugManufactoror, drugPrice);
				list.add(drug);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				close(rs);
				close(pstmt);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

	public List<Drug> selectDrugManu(String searchDrugManu) {
		List<Drug> list = new ArrayList<Drug>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("searchDrugManu");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + searchDrugManu + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("drug_code");
				String drugName = rs.getString("drug_name");
				String drugEffect = rs.getString("drug_effect");
				String drugUsage = rs.getString("drug_usage");
				String drugPrecaution = rs.getString("drug_precautions");
				String drugHowStore = rs.getString("drug_how_store");
				String drugManufactoror = rs.getString("drug_manufactoror");
				String drugPrice = rs.getString("drugPrice");

				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
						drugManufactoror, drugPrice);
				list.add(drug);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				close(rs);
				close(pstmt);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

//	public static void main(String[] args) {
//		Connection connection = getConnection();
//		DrugDao DrugDao = new DrugDao(connection);
//
//		List<Drug> test = DrugDao.selectDrugManu("레놀");
//		System.out.println(test);
//	}
}