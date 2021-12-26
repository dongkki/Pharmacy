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

@WebServlet("/board/insert")
public class ReviewinsertServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private SearchPhamService service1 = new SearchPhamService();
	private ReviewService service2 = new ReviewService();
	private QnAService service3 = new QnAService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String phmaNo = req.getParameter("phamNo");
		String name = req.getParameter("name");
		String contents = req.getParameter("content");
		System.out.println(contents);
		System.out.println(name);
		System.out.println(phmaNo);
		int result = service2.insertReview(phmaNo, name, contents);
		System.out.println(result);
		
		List<QnA> qq = service3.selectQnaPhamNo(phmaNo);
		SearchPham sp = service1.searchPhamByNo(phmaNo);
		ArrayList<Review> review = service2.searchReviewList(phmaNo);
		System.out.println(review);
		req.setAttribute("notice", qq);
		req.setAttribute("review", review);
		req.setAttribute("phamDetail", sp);
		req.getRequestDispatcher("/views/search/phamDetail.jsp").forward(req, resp);
	}
}
