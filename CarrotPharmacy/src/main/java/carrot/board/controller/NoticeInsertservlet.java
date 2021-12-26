package carrot.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.QnAService;
import carrot.service.ReviewService;
import carrot.service.SearchPhamService;
import carrot.vo.QnA;
import carrot.vo.Review;
import carrot.vo.SearchPham;

@WebServlet("/board/insertNotice")
public class NoticeInsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SearchPhamService service1 = new SearchPhamService();
	private ReviewService service2 = new ReviewService();
	private QnAService service3 = new QnAService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String phanNo = req.getParameter("phamNo");
		System.out.println(title+" "+content+" "+phanNo);
		QnA qna = new QnA(0,phanNo,"name",title,content);
		int result = service3.insertQna(qna);
		System.out.println(result);
		
		List<QnA> qq = service3.selectQnaPhamNo(phanNo);
		SearchPham sp = service1.searchPhamByNo(phanNo);
		ArrayList<Review> review = service2.searchReviewList(phanNo);
		System.out.println(review);
		req.setAttribute("review", review);
		req.setAttribute("phamDetail", sp);
		req.setAttribute("notice", qq);
		req.getRequestDispatcher("/views/search/phamDetail.jsp").forward(req, resp);
	}
}
