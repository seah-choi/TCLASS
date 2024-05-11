package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.MsgDAO;
import dto.MsgDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//받은 쪽지,보낸 쪽지
@WebServlet("/mypage/message.do")
public class MsgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Map<String, Object> maps = new HashMap<String, Object>();

		//DAO 생성
		MsgDAO dao = new MsgDAO();
		//아이디
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("memberId");
		
		//전체 쪽지수, 안읽은쪽지수
		int total_count = dao.MsgTotalCount(maps,id);
		int no_count = dao.MsgNoCount(maps, id);
		maps.put("total_count", total_count);
		maps.put("no_count", no_count);
		
		//types
		String types = req.getParameter("types");
		types = (types != null ?types :"receive");
		List<MsgDTO> MsgList = dao.MsgList(maps, id, types);
		dao.close();
		
		req.setAttribute("MsgList", MsgList);
		req.setAttribute("maps", maps);
		
		if(types.equals("receive")) {
			req.getRequestDispatcher("/JSP/mypage/message.jsp").forward(req, resp);
		}
		else if(types.equals("send")) {
			req.getRequestDispatcher("/JSP/mypage/message_03.jsp").forward(req, resp);
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
