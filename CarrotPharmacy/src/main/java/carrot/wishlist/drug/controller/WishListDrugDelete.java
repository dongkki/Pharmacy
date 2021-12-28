package carrot.wishlist.drug.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.DBookmarkService;

@WebServlet("/views/profile/wishlist_drug_del.do")
public class WishListDrugDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DBookmarkService service = new DBookmarkService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		try {
			String drugname = req.getParameter("drugname");

			int result = service.deleteDbookmark(drugname);

			if (result > 0) {
				req.setAttribute("msg", drugname + "이(가) 삭제되었습니다!");
			} else {
				req.setAttribute("msg", "북마크 삭제에 실패 / 이미 삭제되었습니다!");
			}
		} catch (Exception e) {
			req.setAttribute("msg", "북마크 삭제에 실패 / 이미 삭제되었습니다!");
		}
		req.setAttribute("location", "/views/profile/account-profile.jsp");

		req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);

	}
}
