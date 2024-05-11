package controller;

import java.io.IOException;

import dao.MsgDAO;
import dto.MsgDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//쪽지 보내기
@WebServlet("/mypage/message_02.do")
public class MsgWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/JSP/mypage/message_02.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String sendId = (String)session.getAttribute("memberId");
		
		String receiveId = req.getParameter("receiveId");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String file = req.getParameter("file");
		
		System.out.println(receiveId);
		
		MsgDTO dto = new MsgDTO();
		dto.setReceiveId(receiveId);
		dto.setSendId(sendId);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setFile(file);
		
		MsgDAO dao = new MsgDAO();
		int result = dao.MsgWrite(dto);
		req.setAttribute("result", result);

		resp.sendRedirect("/TCLASS/mypage/message.do?types=send");
	}

}
