package dao;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;
import dto.MsgDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;

public class MsgDAO extends JDBConnect {
	public MsgDAO() {}
		
	public MsgDAO(ServletContext application) {
		super(application);
	}
	
	//전체 쪽지 수
	public int MsgTotalCount(Map<String, Object> map, String id) {
		int total_count = 0;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT COUNT(*) FROM tbl_msg");
		sb.append(" WHERE receiveId = ?");
		
		try {
			String sql = sb.toString();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			rs.next();
			total_count = rs.getInt(1);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("전체 쪽지 갯수 조회 에러");
		}
		
		return total_count; 
	}
	
	//안 읽은 쪽지 수
	public int MsgNoCount(Map<String, Object> map, String id) {
		int no_count = 0;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT COUNT(*) FROM tbl_msg");
		sb.append(" WHERE receiveId = ? AND read_date is null");
		
		try {
			String sql = sb.toString();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			rs.next();
			no_count = rs.getInt(1);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("안읽은 쪽지 갯수 조회 에러");
		}
		
		return no_count; 
	}
	
	//쪽지 리스트
	public List<MsgDTO> MsgList(Map<String, Object> map, String id, String types){

		List<MsgDTO> list = new Vector<MsgDTO>();
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT MS.no, MS.sendId, MS.receiveId, MS.title, MS.content, MS.reg_date, MS.read_date, MS.readState, MS.file");
		sb.append(" , ( SELECT RN.NAME FROM tbl_member AS RN WHERE RN.memberId = MS.receiveId ) AS receiver_name");
		sb.append(" ,(SELECT SN.NAME FROM tbl_member AS SN WHERE SN.memberId = MS.sendId) AS sender_name");
		sb.append(" FROM tbl_msg AS MS");
		if(types.equals("receive") ) {
			sb.append(" INNER JOIN tbl_member AS MB ON MB.memberId = MS.receiveId");
			sb.append(" WHERE MS.receiveId =?"); //받은 쪽지 아이디가 본인일 때
		} else if(types.equals("send")) {
			sb.append(" INNER JOIN tbl_member AS MB ON MB.memberId = MS.sendId");
			sb.append(" WHERE MS.sendId =?"); //보낸 쪽지 아이디가 본인일 때
		}
		sb.append("	ORDER BY reg_date desc");
				
		try {	
			String sql = sb.toString();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				MsgDTO dto = new MsgDTO();
				dto.setNo(rs.getInt("no"));
				dto.setSendId(rs.getString("sendId"));
				dto.setReceiveId(rs.getString("receiveId"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setReg_date(rs.getDate("reg_date"));
				dto.setRead_date(rs.getDate("read_date"));
				dto.setReadState(rs.getString("readState"));
				dto.setFile(rs.getString("file"));
				dto.setSendName(rs.getString("sender_name"));
				dto.setReceiveName(rs.getString("receiver_name"));
				
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 리스트 조회 에러");
		}
		
		return list;
	}	
	
	//쪽지 보내기
	public int MsgWrite(MsgDTO dto) {
		int result = 0;
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO tbl_msg(receiveId, title, content, file, sendId, reg_date) VALUES(?,?,?,?,?, now())");
		
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setString(1, dto.getReceiveId());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getFile());
			psmt.setString(5, dto.getSendId());
			
			result = psmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 보내기 에러");
		}
		return result;
		
	}
	
	//쪽지 상세 보기
	public MsgDTO MsgView(int no, String types) {
		MsgDTO dto = new MsgDTO();
		StringBuilder sb = new StringBuilder();
		
		sb.append("SELECT MS.no, MS.sendId, MS.receiveId, MS.title, MS.content, MS.file, MS.reg_date, MS.read_date, MS.readState");
		sb.append(",( SELECT RN.NAME FROM tbl_member AS RN WHERE RN.memberId = MS.receiveId ) AS receiver_name");
		sb.append(",( SELECT SN.NAME FROM tbl_member AS SN WHERE SN.memberId = MS.sendId ) AS sender_name");
		sb.append(" FROM tbl_msg AS MS");		
		if(types.equals("receive") ) {
			//받은 쪽지 아이디가 본인일 때
			sb.append(" INNER JOIN tbl_member AS MB ON MB.memberId = MS.receiveId");
		} else if(types.equals("send")) {
			//보낸 쪽지 아이디가 본인일 때
			sb.append(" INNER JOIN tbl_member AS MB ON MB.memberId = MS.sendId");
		}
		sb.append(" WHERE MS.no=?");
		
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setInt(1, no);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setNo(rs.getInt("no"));
				dto.setReceiveId(rs.getString("receiveId"));
				dto.setSendId(rs.getString("sendId"));
				//dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setFile(rs.getString("file"));
				dto.setReg_date(rs.getDate("reg_date"));
				dto.setRead_date(rs.getDate("read_date"));
				dto.setReadState(rs.getString("readState"));
				dto.setSendName(rs.getString("sender_name"));
				dto.setReceiveName(rs.getString("receiver_name"));
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 상세 보기 에러");
		}
		
		return dto;
	}
	
	//read_date 업데이트
	public int ReadMsg(int no) {
		int result = 0;
		
		StringBuilder sb = new StringBuilder();
		sb.append(" UPDATE tbl_msg SET readState = 'Y', read_date = now()");
		sb.append(" WHERE no = ?");
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setInt(1, no);
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 읽음 처리 에러");
		}
		
		return result;
	}
	
	//쪽지 삭제
	public int MsgDelete(int no) {
		int result = 0;
		StringBuilder sb = new StringBuilder();	
		sb.append("DELETE FROM tbl_msg WHERE no=?");
		
		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setInt(1, no);
			
			result = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 삭제 에러");
		}

		return result;
	}
}










