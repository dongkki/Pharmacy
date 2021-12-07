package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import carrot.vo.QnA;

public class QnADao {
	private Connection conn = null;
	private Properties prop = null;
	
	public QnADao(Connection conn) {
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
	
	public List<QnA> selectQnaQnum(String searchQnaQnum){
		List<QnA> list = new ArrayList<QnA>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectQnAQNum");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+searchQnaQnum+"%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String q_num = rs.getString("q_num");
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
	
	public List<QnA> selectQnaPhamNo(String searchQnaPhamNo){
		List<QnA> list = new ArrayList<QnA>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectQnAPhamNo");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+searchQnaPhamNo+"%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String q_num = rs.getString("q_num");
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

	public List<QnA> selectQnaQname(String searchQnaQname){
		List<QnA> list = new ArrayList<QnA>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectQnAQName");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+searchQnaQname+"%");
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String q_num = rs.getString("q_num");
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
	
//	public static void main(String[] args) {
//		Connection connection = getConnection();
//		QnADao QnADao = new QnADao(connection);
//
//		List<QnA> test = QnADao.selectQnaQname("길동");
//		System.out.println(test);
//	}
}
