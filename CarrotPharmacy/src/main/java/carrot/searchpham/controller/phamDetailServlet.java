package carrot.searchpham.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.SearchPhamService;
import carrot.vo.SearchPham;

@WebServlet("/search/phamDetail")
public class phamDetailServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private SearchPhamService service = new SearchPhamService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String phamNo = req.getParameter("phamNo");
		System.out.println(phamNo);
		SearchPham sp = service.searchPhamByNo(phamNo);
	
		req.setAttribute("phamDetail", sp);
		req.getRequestDispatcher("/views/search/phamDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doGet(req, resp);
	}
}
