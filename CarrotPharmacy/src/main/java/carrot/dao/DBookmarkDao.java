package carrot.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static carrot.common.jdbc.JDBCTemplate.*;
import carrot.vo.DBookMark;

public class DBookmarkDao {
	private Connection conn = null;
	private Properties prop = null;

	public DBookmarkDao(Connection conn) {
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

	public List<DBookMark> selectDBookmark(String id, String pw) {
		List<DBookMark> list = new ArrayList<DBookMark>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectDBookmark");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("DRUG_CODE");
				String userId = rs.getString("USER_ID");
				String dbookScore = rs.getString("DBOOK_SCORE");

				DBookMark dBookmark = new DBookMark(drugCode, userId, dbookScore);
				list.add(dBookmark);
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

	/*public static void main(String[] args) {
		Connection connection = getConnection();
		DBookmarkDao dBookmarkDao = new DBookmarkDao(connection);
		List<DBookmark> test = dBookmarkDao.selectDBookmark("users_khtest", "0000");
		System.out.println(test);
//		try {
//			Connection connection = getConnection();
//			DBookmarkDao dBookmarkDao = new DBookmarkDao(connection);
//			
//			List<DBookmark> test = dBookmarkDao.selectDBookmark("users_khtest", "0000");
//			System.out.println(test);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}*/
}