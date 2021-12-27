package carrot.searchpham.controller;

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

@WebServlet("/search/phamDetail")
public class phamDetailServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private SearchPhamService service1 = new SearchPhamService();
	private ReviewService service2 = new ReviewService();
	private QnAService service3 = new QnAService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String phamNo = req.getParameter("phamNo");
		System.out.println(phamNo);
		SearchPham sp = service1.searchPhamByNo(phamNo);
		ArrayList<Review> review = service2.searchReviewList(phamNo);
		List<QnA> qna = service3.selectQnaPhamNo(phamNo);
		System.out.println(review);
		System.out.println(qna);
		
		
		
		req.setAttribute("review", review);
		req.setAttribute("phamDetail", sp);
		req.setAttribute("notice", qna);
		req.getRequestDispatcher("/views/search/phamDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doGet(req, resp);
	}
}
