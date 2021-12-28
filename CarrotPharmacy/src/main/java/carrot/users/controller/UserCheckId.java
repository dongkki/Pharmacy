package carrot.users.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.UserService;

@WebServlet("/user/checkId")
public class UserCheckId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserService service = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		boolean isDupl = service.isDuplicated(id);

		if (isDupl == true) {
			resp.getWriter().append("used");
		} else {
			resp.getWriter().append("unused");
		}
	}
}
