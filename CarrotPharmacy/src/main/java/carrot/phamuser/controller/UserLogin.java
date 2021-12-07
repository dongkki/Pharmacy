package carrot.phamuser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carrot.service.UserService;
import carrot.vo.Users;

@WebServlet("/userlogin")
public class UserLogin extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private UserService service = new UserService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPwd");
		
		System.out.println(id + " " + pw);
		
		Users loginUser = service.login(id, pw);
		
		if (loginUser != null) { // 로그인 성공!!
			HttpSession session = req.getSession();
			session.setAttribute("loginUser", loginUser);

			resp.sendRedirect(req.getContextPath() + "/"); // 메인 페이지로 이동
		} else { // 로그인 실패!!
			req.setAttribute("msg", "사용자 아이디나 비밀번호가 맞지 않습니다!");
			req.setAttribute("location", "/");

//			req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
		}
	}

}
