package carrot.users.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import carrot.service.UserService;
import carrot.vo.Users;

@WebServlet("/updateUser")
public class UserUpdate extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private UserService service = new UserService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			Users loginUser = (Users) session.getAttribute("loginUser");
			
			Users modifyUser = new Users();
			modifyUser.setUser_name(req.getParameter("name"));
			modifyUser.setUser_pw(req.getParameter("tel"));
			modifyUser.setUser_tell(req.getParameter("pw"));
			
			
			if(loginUser.getUser_id().equals(modifyUser.getUser_id()) == false) {
				sendCommonPage("잘못된 아이디 입니다.", "/", req, resp);
				return;
			}
			
			int result = service.saveUser(modifyUser);
			
			if(result <= 0) {
				sendCommonPage("회원정보를 수정할 수 없습니다.", "/views/profile/account-profile.jsp", req, resp);
				return;
			}
			sendCommonPage("회원정보가 수정되었습니다.", "/views/profile/account-profile.jsp", req, resp);
			
		} catch (Exception e) {
			sendCommonPage("잘못된 접근입니다.", "/", req, resp);
		}
	
	}
	
	void sendCommonPage(String msg, String path, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("msg", msg);
		req.setAttribute("location", path);
		req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
	}

}
