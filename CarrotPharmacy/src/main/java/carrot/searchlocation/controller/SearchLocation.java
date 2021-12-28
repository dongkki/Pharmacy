package carrot.searchlocation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import carrot.service.LocationService;
import carrot.vo.Location;

@WebServlet("/searchLocation.do")
public class SearchLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LocationService service = new LocationService();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String phamNo = req.getParameter("phamNo");
		System.out.println(phamNo);

		Location loca = null;
		JSONObject object = new JSONObject();

		loca = service.findLocationByNo(phamNo);
		System.out.println(loca);
		object.put("lat", loca.getLocation_latitude());
		object.put("lon", loca.getLocation_longtitude());
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
