package carrot.users.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.UserService;
import carrot.vo.Users;
@WebServlet("/enrollUser")
public class UserEnroll extends HttpServlet{
	private static final long serialVersionUID = 1L;

	UserService service = new UserService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath()+"/views/user/enroll.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		Users user = new Users();
		
		try { 
			user.setUser_id(req.getParameter("id"));
			user.setUser_pw(req.getParameter("pw"));
			user.setUser_name(req.getParameter("name"));
			user.setUser_tell(req.getParameter("phone"));
			
			System.out.println(user.toString());
			
		} catch (Exception e) {
			req.setAttribute("msg", "회원가입 실패!");
			req.setAttribute("location", "/user/enrollUser");
			req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
    		return;
		}
		
		int result = service.enrollUser(user);
		
		if(result > 0) {
			req.setAttribute("msg", "회원가입 성공!");
			req.setAttribute("location", "/views/index.jsp");
		}else {
			req.setAttribute("msg", "회원가입 실패!");
			req.setAttribute("location", "/user/enrollUser.jsp");
		}
		req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
	}
	
}
