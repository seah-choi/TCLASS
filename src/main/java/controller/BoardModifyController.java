package controller;

import java.io.IOException;

import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//1:1 문의글 수정
@WebServlet("/mypage/boardModify.do")
public class BoardModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		int no = Integer.parseInt(req.getParameter("no"));
		BoardDTO BoardView = dao.BoardView(no);
		dao.close();
		
		String category_1 = "";
		String category_2 = "";	
		String title = "";
		String content = ""; 
		String answerStatus ="";
		String answer = "";
		String reg_date = "";
		
		if(BoardView != null) {
			category_1 = BoardView.getCategory_1();
			category_2 = BoardView.getCategory_2();
			title = BoardView.getTitle();
			content = BoardView.getContent();
			answerStatus = BoardView.getAnswerStatus();
			answer = BoardView.getAnswer();
			reg_date = (BoardView.getReg_date() !=null ?BoardView.getReg_date().toString() :"");
		}
		
		req.setAttribute("BoardView", BoardView);
		req.getRequestDispatcher("/JSP/mypage/oneboard_04.jsp?no"+no).forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int board_no = Integer.parseInt(req.getParameter("no"));
		
		String category_1 = req.getParameter("category_1");
		String category_2 = req.getParameter("category_2");	
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setCategory_1(category_1);
		dto.setCategory_2(category_2);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setNo(board_no);

		BoardDAO dao = new BoardDAO();
		int result = dao.BoardModify(dto);
		
		if(result > 0) {
			System.out.println("수정 성공");
			resp.sendRedirect("/TCLASS/mypage/oneboard_01.do");
			dao.close();
		} else {
			System.out.println("수정 오류");
		}

		
	}

}
