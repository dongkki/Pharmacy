package carrot.searchpham.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.DrugService;
import carrot.vo.Drug;

@WebServlet("/views/search/searchDrug")
public class SearchDrug extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	DrugService service = new DrugService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Drug> list = null;
		list = service.getBoardList();
//		System.out.println(list.toString());
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/views/search/searchDrug.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
