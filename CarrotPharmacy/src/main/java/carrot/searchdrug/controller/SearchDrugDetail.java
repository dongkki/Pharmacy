package carrot.searchdrug.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import carrot.service.DrugService;
import carrot.vo.Drug;

@WebServlet("/views/search/searchDetail.do")
public class SearchDrugDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DrugService service = new DrugService();

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		String drugName = req.getParameter("drugName");

		Drug drug = null;
		JSONObject object = new JSONObject();

		drug = service.findDrugByName(drugName);
		System.out.println(drug);
		object.put("drugCode", drug.getDrugCode());
		object.put("drugName", drug.getDrugName());
		object.put("drugManufactoror", drug.getDrugManufactoror());
		object.put("drugEffect", drug.getDrugEffect());
		object.put("drugUsage", drug.getDrugUsage());
		object.put("drugHowStore", drug.getDrugHowStore());
		object.put("drugPrecautions", drug.getDrugPrecautions());
		System.out.println(object.toJSONString());
		resp.setContentType("application/json; charset=UTF-8");
		resp.getWriter().print(object);
		resp.getWriter().flush();

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
