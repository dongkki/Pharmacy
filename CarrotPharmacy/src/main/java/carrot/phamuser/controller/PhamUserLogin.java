package carrot.phamuser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carrot.service.PhamUserService;
import carrot.vo.PhamUser;

@WebServlet("/phamlogin")
public class PhamUserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PhamUserService service = new PhamUserService();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		System.out.println(id + " " + pw);

		PhamUser loginPham = service.login(id, pw);

		if (loginPham != null) {
			HttpSession session = req.getSession();
			session.setAttribute("loginPham", loginPham);

			resp.sendRedirect(req.getContextPath() + "/views/index.jsp");
		} else { 
			req.setAttribute("msg", "사용자 아이디나 비밀번호가 맞지 않습니다!");
			req.setAttribute("location", "/views/index.jsp");

			req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
		}
	}

}
