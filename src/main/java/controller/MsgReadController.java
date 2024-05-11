package controller;

import java.io.IOException;

import dao.MsgDAO;
import dto.MsgDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//쪽지 읽음 처리
@WebServlet("/mypage/messageRead.do")
public class MsgReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] checkbox = req.getParameterValues("checkbox");
		
		MsgDAO dao = new MsgDAO();
		MsgDTO ReadMsg = new MsgDTO();
		
		int cnt = 0;
		for(int i =0; i<checkbox.length; i++) {
			int no = Integer.parseInt(checkbox[i]);
			int result = dao.ReadMsg(no);
			if(result > 0) {
				cnt++;
			}
		}
		dao.close();
		resp.sendRedirect("/TCLASS/mypage/message.do");
		req.setAttribute("ReadMsg", ReadMsg);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
