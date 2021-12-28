package carrot.searchdrug.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.DrugService;
import carrot.vo.Drug;

@WebServlet("/views/search/searchDrug.do")
public class SearchDrug extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DrugService service = new DrugService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		String drugname = req.getParameter("name");
		System.out.println(drugname);

		List<Drug> drug = service.selectDrugName(drugname);

		req.setAttribute("list", drug);
		req.getRequestDispatcher("/views/search/searchDrug.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
