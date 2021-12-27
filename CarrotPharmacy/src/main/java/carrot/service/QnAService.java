package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.commit;
import static carrot.common.jdbc.JDBCTemplate.getConnection;
import static carrot.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import carrot.dao.QnADao;
import carrot.vo.QnA;

public class QnAService {
	private static QnADao dao = new QnADao();

	public List<QnA> selectQnaPhamNo(String searchQnaPhamNo){
		Connection connection  = getConnection();
		List<QnA> list = dao.selectQnaPhamNo(connection, searchQnaPhamNo);
		close(connection);
		return list;
	}
	
	
	public static int insertQna(QnA qna ) {
		Connection connection = getConnection();
		int result = dao.insertQna(connection, qna);
		if(result > 0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		close(connection);
		return result;
		
	}
}
