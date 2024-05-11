package dao;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;
import dto.BoardDTO;
import dto.MsgDTO;
import jakarta.servlet.ServletContext;

public class BoardDAO extends JDBConnect{
	public BoardDAO() {}
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	//문의글 작성
	public int BoardRegist(BoardDTO dto) {
		int result = 0;
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO tbl_board(category_1, category_2, memberId, reg_date ,title, content) VALUES(?,?,?,NOW(),?,?)");
		 
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setString(1, dto.getCategory_1());
			psmt.setString(2, dto.getCategory_2());
			psmt.setString(3, dto.getMemberId());
			psmt.setString(4, dto.getTitle());
			psmt.setString(5, dto.getContent());
			
			result = psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("문의글 작성 실패");
		}
		return result;
	}
	
	//문의글 리스트
	public List<BoardDTO> BoardList(Map<String, Object> map, String id){

		List<BoardDTO> list = new Vector<BoardDTO>();
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT no, category_1, category_2, memberId, reg_date , title, content");
		sb.append(" FROM tbl_board");
		sb.append(" WHERE memberId = ?");
		sb.append("	ORDER BY no desc");
				
		try {	
			String sql = sb.toString();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setCategory_1(rs.getString("category_1"));
				dto.setCategory_2(rs.getString("category_2"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				//dto.setAnswerStatus(rs.getString("answerStatus"));
				dto.setReg_date(rs.getDate("reg_date"));
				
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("문의글 리스트 조회 에러");
		}
		
		return list;
	}
	
	//문의글 상세 보기
	public BoardDTO BoardView(int no) {
		BoardDTO dto = new BoardDTO();
		StringBuilder sb = new StringBuilder();
		
		sb.append("SELECT no, category_1, category_2, reg_date , title, content, answerStatus, answer");
		sb.append(" FROM tbl_board");
		sb.append("	WHERE no = ?");
		
		try {
			String sql = sb.toString();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,no);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setNo(rs.getInt("no"));
				dto.setCategory_1(rs.getString("category_1"));
				dto.setCategory_2(rs.getString("category_2"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setAnswerStatus(rs.getString("answerStatus"));
				dto.setAnswer(rs.getString("answer"));
				dto.setReg_date(rs.getDate("reg_date"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("문의글 상세 보기 에러");
		}
		
		return dto;
	}
	
	//문의글 삭제
	public int BoardDelete(int no) {
		int result = 0;
		StringBuilder sb = new StringBuilder();	
		sb.append("DELETE FROM tbl_board WHERE no=?");
		
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setInt(1, no);
			
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("문의글 삭제 에러");
		}

		return result;
	}
	
	//문의글 수정
	public int BoardModify(BoardDTO dto) {
		int result = 0;
		StringBuilder sb = new StringBuilder();
		sb.append("UPDATE tbl_board SET title=?, content = ?,  reg_date = now()");
		sb.append(" WHERE no=?");
		
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setInt(3, dto.getNo());
		
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("문의글 수정 에러");
		}
		return result;
	}
}
