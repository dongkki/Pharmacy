package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.*;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import carrot.vo.PBookMark;

public class PbookMarkDao {
	private Connection conn = null;
	private Properties prop = null;

	public PbookMarkDao(Connection conn) {
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

	public List<PBookMark> selectPbook() {
		List<PBookMark> list = new ArrayList<PBookMark>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String query = prop.getProperty("selectPBookmark");

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String phamNo = rs.getString("pham_no");
				String userId = rs.getString("user_id");
				String pbookScore = rs.getString("pbook_score");

				PBookMark pbookMark = new PBookMark(phamNo, userId, pbookScore);
				list.add(pbookMark);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return list;
	}
}
