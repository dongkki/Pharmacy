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

			while (rs.next()) {
				Drug drug = new Drug();
				drug.setDrugCode(rs.getString("drug_code"));
				drug.setDrugName(rs.getString("drug_name"));
				drug.setDrugEffect(rs.getString("drug_effect"));
				drug.setDrugUsage(rs.getString("drug_usage"));
				drug.setDrugPrecautions(rs.getString("drug_precautions"));
				drug.setDrugHowStore(rs.getString("drug_how_store"));
				drug.setDrugManufactoror(rs.getString("drug_manufactoror"));
				drug.setDrugImage(rs.getString("drug_image"));

				list.add(drug);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public Drug findDrugByName(Connection connection, String name) {
		Drug drug = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = "SELECT * FROM DRUG WHERE DRUG_NAME LIKE ?";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();

			if (rs.next() == true) {
				drug = new Drug();
				drug.setDrugCode(rs.getString("DRUG_CODE"));
				drug.setDrugName(rs.getString("DRUG_NAME"));
				drug.setDrugManufactoror(rs.getString("DRUG_MANUFACTOROR"));
				drug.setDrugEffect(rs.getString("DRUG_EFFECT"));
				drug.setDrugUsage(rs.getString("DRUG_USAGE"));
				drug.setDrugHowStore(rs.getString("DRUG_HOW_STORE"));
				drug.setDrugPrecautions(rs.getString("DRUG_PRECAUTIONS"));
				drug.setDrugImage(rs.getString("drug_image"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return drug;
	}

	public List<Drug> selectDrugName(Connection connection, String drugname) {
		List<Drug> list = new ArrayList<Drug>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM DRUG WHERE DRUG_NAME LIKE ? ORDER BY 1";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, "%" + drugname + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("drug_code");
				String drugName = rs.getString("drug_name");
				String drugEffect = rs.getString("drug_effect");
				String drugUsage = rs.getString("drug_usage");
				String drugPrecaution = rs.getString("drug_precautions");
				String drugHowStore = rs.getString("drug_how_store");
				String drugManufactoror = rs.getString("drug_manufactoror");
				String drugImage = rs.getString("drug_image");

				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
						drugManufactoror, drugImage);
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

	public List<Drug> selectDrugManu(Connection connection, String drugManu) {
		List<Drug> list = new ArrayList<Drug>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM DRUG WHERE DRUG_MANUFACTOROR LIKE ? ORDER BY 1";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, "%" + drugManu + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("drug_code");
				String drugName = rs.getString("drug_name");
				String drugEffect = rs.getString("drug_effect");
				String drugUsage = rs.getString("drug_usage");
				String drugPrecaution = rs.getString("drug_precautions");
				String drugHowStore = rs.getString("drug_how_store");
				String drugManufactoror = rs.getString("drug_manufactoror");
				String drugImage = rs.getString("drug_image");

				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
						drugManufactoror, drugImage);
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

	public List<Drug> selectDrugEffect(Connection connection, String effect) {
		List<Drug> list = new ArrayList<Drug>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM DRUG WHERE DRUG_EFFECT LIKE ? ORDER BY 1";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, "%" + effect + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("drug_code");
				String drugName = rs.getString("drug_name");
				String drugEffect = rs.getString("drug_effect");
				String drugUsage = rs.getString("drug_usage");
				String drugPrecaution = rs.getString("drug_precautions");
				String drugHowStore = rs.getString("drug_how_store");
				String drugManufactoror = rs.getString("drug_manufactoror");
				String drugImage = rs.getString("drug_image");

				Drug drug = new Drug(drugCode, drugName, drugEffect, drugUsage, drugPrecaution, drugHowStore,
						drugManufactoror, drugImage);
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

	public int insertDrug(Connection connection, Drug drug) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO DRUG (DRUG_CODE,DRUG_NAME,DRUG_EFFECT,DRUG_USAGE,DRUG_PRECAUTIONS,DRUG_HOW_STORE,DRUG_MANUFACTOROR, DRUG_IMAGE)"
				+ "VALUES (?,?,?,?,?,?,?,?)";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, drug.getDrugCode());
			pstmt.setString(2, drug.getDrugName());
			pstmt.setString(3, drug.getDrugEffect());
			pstmt.setString(4, drug.getDrugUsage());
			pstmt.setString(5, drug.getDrugPrecautions());
			pstmt.setString(6, drug.getDrugHowStore());
			pstmt.setString(7, drug.getDrugManufactoror());
			pstmt.setString(8, drug.getDrugImage());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
		} finally {

			close(pstmt);
		}

		return result;
	}

	public int init(Connection connection) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM DRUG";

		try {
			pstmt = connection.prepareStatement(query);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			close(pstmt);
		}
		return result;
	}

}
