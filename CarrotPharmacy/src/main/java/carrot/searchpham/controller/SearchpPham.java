package carrot.search.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.PharmacyService;
import carrot.vo.Pharmacy;

@WebServlet("/searchpham.do")
public class SearchpPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PharmacyService service = new PharmacyService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post");
		doGet(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get");
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("search_box");
		String address = req.getParameter("address");
		System.out.println(name+","+address);
		//사용자가 입력한 데이터 가져옴()
		ArrayList<Pharmacy> pham = service.findPharmacyByName(name);
		
		req.setAttribute("pham", pham);
		req.getRequestDispatcher("/views/search/searchPham.jsp").forward(req, resp);
	}
		
}
