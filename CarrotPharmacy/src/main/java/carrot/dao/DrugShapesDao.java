package carrot.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static carrot.common.jdbc.JDBCTemplate.*;
import carrot.vo.DrugShapes;

public class DrugShapesDao {
	private Connection conn = null;
	private Properties prop = null;

	public DrugShapesDao(Connection conn) {
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

	public List<DrugShapes> selectDrugShape(String shpae) {
		List<DrugShapes> list = new ArrayList<DrugShapes>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectDrugShape");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + shpae + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drug_code = rs.getString("drug_code");
				String drug_shpae = rs.getString("drug_shape");
				String drug_color = rs.getString("drug_color");
				String drug_image = rs.getString("drug_image");

				DrugShapes DrugShapes = new DrugShapes(drug_code, drug_shpae, drug_color, drug_image);
				list.add(DrugShapes);
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

	public List<DrugShapes> selectDrugColor(String color) {
		List<DrugShapes> list = new ArrayList<DrugShapes>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectDrugColor");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + color + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drug_code = rs.getString("drug_code");
				String drug_shpae = rs.getString("drug_shape");
				String drug_color = rs.getString("drug_color");
				String drug_image = rs.getString("drug_image");

				DrugShapes DrugShapes = new DrugShapes(drug_code, drug_shpae, drug_color, drug_image);
				list.add(DrugShapes);
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
//		DrugShapesDao DrugShapesDao = new DrugShapesDao(connection);
//
//		List<DrugShapes> test = DrugShapesDao.selectDrugColor("흰");
//		System.out.println(test);
//	}
}
