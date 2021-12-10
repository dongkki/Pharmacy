package carrot.phamuser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.PhamUserService;


@WebServlet("/user/checkNo")
public class PhamUserCheckNo extends HttpServlet{
private static final long serialVersionUID = 1L;
	
	PhamUserService service = new PhamUserService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String phamNo = req.getParameter("phamNo");
	
		boolean isDupl = service.isDuplicated(phamNo);
		
		if (isDupl == true) {
			// 중복
			resp.getWriter().append("used");
		} else {
			// 중복 아님
			resp.getWriter().append("unused");
		}
	}
}
