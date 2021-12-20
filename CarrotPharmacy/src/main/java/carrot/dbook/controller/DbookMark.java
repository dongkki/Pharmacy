package carrot.dbook.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.service.DBookmarkService;
import carrot.vo.DBookmark;

@WebServlet("/views/search/drugBookmark.do")
public class DbookMark extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private DBookmarkService service = new DBookmarkService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		String code = req.getParameter("code");
		String name = req.getParameter("name");
		String manufact = req.getParameter("manufact");
		String effect = req.getParameter("effect");
		System.out.println(id+code+name+manufact+effect);
		
		
		DBookmark bookmark = new DBookmark(id, code, name, manufact, effect);
		
		int result = service.addDBookmark(bookmark);
		
		if(result > 0) {
			req.setAttribute("msg", "북마크에 추가되었습니다!");
			req.setAttribute("location", "/views/search/searchDrug");
		} else {
			req.setAttribute("msg", "북마크 추가에 실패 / 이미 북마크에 존재합니다!");
			req.setAttribute("location", "/views/search/searchDrug");
		}
		
		req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
