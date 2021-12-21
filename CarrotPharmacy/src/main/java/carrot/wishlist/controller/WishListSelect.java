package carrot.wishlist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.DBookmarkService;
import carrot.vo.DBookmark;

@WebServlet("/views/profile/account-wishlist_drug.do")
public class WishListSelect extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private DBookmarkService service = new DBookmarkService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		System.out.println(id);
		
		List<DBookmark> mark = service.searchAll(id);
		System.out.println(mark.toString());
		
		req.setAttribute("list", mark);
		req.getRequestDispatcher("/views/profile/account-wishlist_drug.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
