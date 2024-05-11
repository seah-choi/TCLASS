package controller;

import java.io.IOException;

import common.CommonUtil;
import dao.MsgDAO;
import dto.MsgDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/mypage/message_04.do")
public class MsgViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int no = CommonUtil.parseInt(req.getParameter("no"));
		String types = req.getParameter("types");
		MsgDTO MsgView = new MsgDTO();
		
		if(no > 0) {
			MsgDAO dao = new MsgDAO();
			MsgView = dao.MsgView(no, types);
			dao.close();
		} else {
			resp.sendRedirect("/TCLASS/mypage/message.do");
		}
		
		String receiveId = "";
		String title ="";
		String content ="";
		String file ="";
		String reg_date= "";
		String read_date="";
		String receiveName ="";
		String sendName ="";
		
		if(MsgView != null) {
			receiveId = MsgView.getReceiveId();
			title = MsgView.getTitle();
			content = MsgView.getContent();
			content = (content!=null ?content.replace("\n\r", "<br>") : "");
			content = (content!=null ?content.replace(" ", "&nbsp;") : ""); 
			file = MsgView.getFile();
			reg_date = (MsgView.getReg_date() !=null ?MsgView.getReg_date().toString() :"");
			read_date = (MsgView.getRead_date() !=null ?MsgView.getRead_date().toString() :"");
			receiveName = MsgView.getReceiveName();
			sendName = MsgView.getSendName();

		}
		
		//읽음 처리
		MsgDTO ReadMsg = new MsgDTO();
		if(no > 0) {
			MsgDAO dao = new MsgDAO();
			int result = dao.ReadMsg(no);
			dao.close();
		}
		
		req.setAttribute("MsgView", MsgView);
		req.getRequestDispatcher("/JSP/mypage/message_04.jsp").forward(req, resp);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
