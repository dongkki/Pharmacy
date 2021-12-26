package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import carrot.vo.QnA;

public class QnADao {

	public List<QnA> selectQnaPhamNo(Connection connection, String searchQnaPhamNo) {
		List<QnA> list = new ArrayList<QnA>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String query = "SELECT * FROM QNA JOIN PHARMACY USING(PHAM_NO) WHERE PHAM_NO LIKE ?";

			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, "%" + searchQnaPhamNo + "%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				int q_num = rs.getInt("q_num");
				String pham_no = rs.getString("pham_no");
				String q_name = rs.getString("q_name");
				String q_title = rs.getString("q_title");
				String q_contents = rs.getString("q_contents");

				QnA qna = new QnA(q_num, pham_no, q_name, q_title, q_contents);
				list.add(qna);
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

	public int insertQna(Connection connection, QnA qna) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO QNA(q_num, pham_no, q_name, q_title, q_contents) VALUES (Q_NUM_SEQ.NEXTVAL,?,?,?,?)";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, qna.getPham_no());
			pstmt.setString(2, qna.getQ_name());
			pstmt.setString(3, qna.getQ_title());
			pstmt.setString(4, qna.getQ_contents());
			result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			try {
				close(pstmt);
			} catch (Exception e2) {
			}
		}
		return result;

	}

//	public static void main(String[] args) {
//		Connection connection = getConnection();
//		QnADao QnADao = new QnADao(connection);
//
//		List<QnA> test = QnADao.selectQnaQname("길동");
//		System.out.println(test);
//	}
}
