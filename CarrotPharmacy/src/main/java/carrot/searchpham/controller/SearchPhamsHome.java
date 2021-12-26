package carrot.searchpham.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.SearchPhamService;
import carrot.vo.SearchPham;


@WebServlet("/searchPhamHome.do")
public class SearchPhamsHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SearchPhamService service = new SearchPhamService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post");
		doGet(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		String gu = "강남구";
		System.out.println(name+","+gu);
		
		ArrayList<SearchPham> spl = service.searchPhamHome(name, gu);
		System.out.println(spl);
		
		req.setAttribute("pham", spl);
		req.getRequestDispatcher("/views/search/search_pharmacy.jsp").forward(req, resp);
	}
	
		
}