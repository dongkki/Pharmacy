package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.PbookMarkDao;
import carrot.vo.PBookMark;

public class PbookMarkService {
	
	private PbookMarkDao dao = null;
	private Connection conn = null;
	
	public PbookMarkService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		dao = new PbookMarkDao(conn);
	}

	public List<PBookMark> selectAll(){
		dao.setConn(conn);
		return dao.selectPbook();
	}
	
}
