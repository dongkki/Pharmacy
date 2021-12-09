package carrot.users.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.UserService;

@WebServlet("/member/checkId")
public class UserCheckId extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	UserService service = new UserService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
	
		boolean isDupl = service.isDuplicated(userId);
		
		req.setAttribute("dupicated", isDupl);
		req.getRequestDispatcher("/views/user/checkId.jsp").forward(req, resp);
	}
}
