package carrot.service;


import static carrot.common.jdbc.JDBCTemplate.getConnection;
import static carrot.common.jdbc.JDBCTemplate.commit;
import static carrot.common.jdbc.JDBCTemplate.rollback;
import static carrot.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.util.ArrayList;

import carrot.dao.ReviewDao;
import carrot.vo.Review;

public class ReviewService {
	private ReviewDao dao = new ReviewDao();
	
	
	public ArrayList<Review> searchReviewList(String phamNo){
		Connection connection = getConnection();
		ArrayList<Review> reviews = dao.searchReviewList(connection, phamNo);
		close(connection);
		return reviews;
	}

	public Review selectByRenum(int reNum) {
		Connection connection = getConnection();
		Review review = dao.selectByRenum(connection, reNum);
		close(connection);
		return review;
	}
	
	public int updateContents(int reNum, String content) {
		Connection connection = getConnection();
		int result = dao.updateContents(connection, reNum, content);
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		return result;
	}
	
	public int insertReview(String phamNo, String name, String content ) {
		Connection connection = getConnection();
		int result = dao.insertReview(connection, phamNo,name,content);
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		return result;
	}
	
	public int deleteReview(int reNum) {
		Connection connection = getConnection();
		int result = dao.deleteReview(connection, reNum);
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		return result;
	}
}
