package carrot.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.ReviewService;
import carrot.service.SearchPhamService;
import carrot.vo.Review;
import carrot.vo.SearchPham;

@WebServlet("/board/delete")
public class ReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SearchPhamService service1 = new SearchPhamService();
	private ReviewService service2 = new ReviewService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String phmaNo = req.getParameter("phamNo");
		String reNum = req.getParameter("reNum");
		System.out.println(reNum +" " + phmaNo);
		
		int result = service2.deleteReview(Integer.parseInt(reNum));
		System.out.println(result);
		
		SearchPham sp = service1.searchPhamByNo(phmaNo);
		ArrayList<Review> review = service2.searchReviewList(phmaNo);
		System.out.println(review);
		req.setAttribute("review", review);
		req.setAttribute("phamDetail", sp);
		req.getRequestDispatcher("/views/search/phamDetail.jsp").forward(req, resp);
	}
}
