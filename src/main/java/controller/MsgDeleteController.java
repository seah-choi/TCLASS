package controller;

import java.io.IOException;

import dao.MsgDAO;
import dto.MsgDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//쪽지 삭제
@WebServlet("/mypage/delete.do")
public class MsgDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//int no = (req.getParameter("no")!= null ?Integer.parseInt(req.getParameter("no")):0);
		String[] checkbox = req.getParameterValues("checkbox");
		
		MsgDAO dao = new MsgDAO();
		MsgDTO MsgDelete = new MsgDTO();
		
		int cnt = 0;
		for(int i = 0; i<checkbox.length; i++) {
			int no = Integer.parseInt(checkbox[i]);
			int result = dao.MsgDelete(no);
			if(result > 0) {
				cnt++;
			}
		}
		dao.close();
		resp.sendRedirect("/TCLASS/mypage/message.do");
		
		//req.setAttribute("MsgDelete", MsgDelete);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
