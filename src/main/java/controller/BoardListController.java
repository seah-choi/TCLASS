package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


//문의글 리스트
@WebServlet("/mypage/oneboard_01.do")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Map<String, Object> maps = new HashMap<String, Object>();
		
		//DAO 생성
		BoardDAO dao = new BoardDAO();
		
		//아이디
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("memberId");

		List<BoardDTO> BoardList = dao.BoardList(maps, id);
		dao.close();
		
		req.setAttribute("BoardList", BoardList);
		req.setAttribute("maps", maps);
		
		req.getRequestDispatcher("/JSP/mypage/oneboard_01.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
