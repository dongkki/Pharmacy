package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import carrot.vo.Review;

public class ReviewDao {

	public ArrayList<Review> searchReviewList(Connection connection, String phamNo) {
		Review review = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM REVIEW WHERE PHAM_NO =?";
		ArrayList<Review> reviews = new ArrayList<Review>();
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, phamNo);
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				review = new Review();
				review.setRe_num(rs.getInt("RE_NUM"));
				review.setPham_no(rs.getString("PHAM_NO"));
				review.setRe_id(rs.getString("RE_ID"));
				review.setRe_contents(rs.getString("RE_CONTENTS"));
				review.setCreate_date(rs.getDate("CREATE_DATE"));
				reviews.add(review);
			}
		} catch (Exception e) {
		} finally {
			close(pstmt);
			close(rs);
		}
		return reviews;
	}

	public Review selectByRenum(Connection connection, int reNum) {
		Review review = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM REVIEW WHERE RE_NUM =?";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setInt(1, reNum);
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				review = new Review();
				review.setRe_num(rs.getInt("RE_NUM"));
				review.setPham_no(rs.getString("PHAM_NO"));
				review.setRe_id(rs.getString("RE_ID"));
				review.setRe_contents(rs.getString("RE_CONTENTS"));
				review.setCreate_date(rs.getDate("CREATE_DATE"));
			}
		} catch (Exception e) {
		} finally {
			close(pstmt);
			close(rs);
		}

		return review;
	}

	public int updateContents(Connection connection, int reNum, String content) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;
		try {
			query = "UPDATE REVIEW SET RE_CONTENTS=? WHERE RE_NUM=?";
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, content);
			pstmt.setInt(2, reNum);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int insertReview(Connection connection, String phamNo, String name, String content) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO REVIEW VALUES(RE_NUM_SEQ.NEXTVAL,?,?,?,DEFAULT)";
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, phamNo);
			pstmt.setString(2, name);
			pstmt.setString(3, content);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteReview(Connection connection, int reNum) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			query = "DELETE REVIEW WHERE RE_NUM=?";
			pstmt = connection.prepareStatement(query);

			pstmt.setInt(1, reNum);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			close(pstmt);
		}

		return result;

	}

}
