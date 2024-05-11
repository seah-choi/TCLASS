package dao;

import common.JDBConnect;
import dto.LoginDTO;
import jakarta.servlet.ServletContext;

public class LoginDAO extends JDBConnect {
	public LoginDAO() {
	}

	public LoginDAO(ServletContext application) {
		super(application);
	}

	// 로그인 시, 회원 체크
	public LoginDTO MemberLogin(String id, String pwd) {
		LoginDTO dto = new LoginDTO();
		String sql = "SELECT * FROM tbl_member WHERE memberId =?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("password").equals(pwd)) {
					dto.setNo(rs.getInt("no"));
					dto.setMemberId(rs.getString("memberId"));
					dto.setName(rs.getString("name"));
					dto.setPassword(rs.getString("password")); 
					dto.setYear(rs.getInt("year"));
					dto.setMonth(rs.getInt("month")); 
					dto.setDay(rs.getInt("day"));
					dto.setGender(rs.getString("gender")); 
					dto.setTel(rs.getString("tel"));
					dto.setEmail(rs.getString("email"));
					dto.setInterest(rs.getString("interest"));
					dto.setGrade(rs.getString("grade")); 
					dto.setImage(rs.getString("image"));

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	// 회원가입
	public int JoinMember(LoginDTO dto) {
		int result = 0;

		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO tbl_member (memberId, name, password, year, month, day , gender, tel");
		sb.append(", email, interest, grade, image)");
		sb.append(" VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");

		try {
			psmt = conn.prepareStatement(sb.toString());
			psmt.setString(1, dto.getMemberId());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getPassword());
			psmt.setInt(4, dto.getYear());
			psmt.setInt(5, dto.getMonth());
			psmt.setInt(6, dto.getDay());
			psmt.setString(7, dto.getGender());
			psmt.setString(8, dto.getTel());
			psmt.setString(9, dto.getEmail());
			psmt.setString(10, dto.getInterest());
			psmt.setString(11, dto.getGrade());
			psmt.setString(12, dto.getImage());

			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 아이디 찾기
	public LoginDTO SearchId(String name, String tel, String full) {
		LoginDTO dto = new LoginDTO();
		StringBuilder sb = new StringBuilder();
		if(full.equals("N")) {
			sb.append("SELECT name, tel, concat(substring(memberId, 1, 4), '****') as memberId FROM tbl_member WHERE name =? AND tel=?");
		} else if(full.equals("Y")) {
			sb.append("SELECT memberId, name, tel FROM tbl_member WHERE name =? AND tel=?");
		}
		

		try {
			String sql = sb.toString();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, tel);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto.setMemberId(rs.getString("memberId"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	// 비밀번호 찾기
	public String SearchPwd(String id, String name, String tel) {
		String idCheck = "";
		String sql = "SELECT memberId FROM tbl_member WHERE memberId = ? AND name =? AND tel=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, name);
			psmt.setString(3, tel);

			rs = psmt.executeQuery();
			if (rs.next()) {
				idCheck = rs.getString("memberId");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idCheck;
	}

	// 비밀번호 변경
	public int ChangePwd(LoginDTO dto, String id) {
		int result = 0;
		String sql = "UPDATE tbl_member SET password = ? WHERE memberId = ?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPassword());
			psmt.setString(2, id);

			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("비밀번호 수정 에러");
		}

		return result;
	}
	
	//회원정보 수정
	public int EditMyInfo(LoginDTO dto, String id) {
		int result = 0;
		String sql = "UPDATE tbl_member SET password = ? , tel = ?, email = ? WHERE memberId = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPassword());
			psmt.setString(2, dto.getTel());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, id);
			
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원정보 수정 에러");
		}
		
		return result;
	}
}
