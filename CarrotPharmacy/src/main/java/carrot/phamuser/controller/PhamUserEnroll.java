package carrot.phamuser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.PhamUserService;
import carrot.vo.PhamUser;
@WebServlet("/enroll")
public class PhamUserEnroll extends HttpServlet{
	private static final long serialVersionUID = 1L;

	PhamUserService service = new PhamUserService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath()+"/views/user/enroll.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PhamUser user = new PhamUser();
		
		try { 
			user.setPham_id(req.getParameter("id"));
			user.setPham_user_pw(req.getParameter("pw"));
			user.setPham_no(req.getParameter("phamNo"));
			
			System.out.println(user.toString());
			
		} catch (Exception e) {
			req.setAttribute("msg", "회원가입 실패!");
			req.setAttribute("location", "/user/enroll");
			req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
    		return;
		}
		
		int result = service.enrollPham(user);
		
		if(result > 0) {
			req.setAttribute("msg", "회원가입 성공!");
			req.setAttribute("location", "/views/index.jsp");
		}else {
			req.setAttribute("msg", "회원가입 실패!");
			req.setAttribute("location", "/user/enroll.jsp");
		}
		req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
	}
	
}
