package dto;

import java.time.LocalDateTime;
import java.sql.Date;

public class BoardDTO {
	private int no;
	private String category_1;
	private String category_2;
	private String memberId;
	private Date reg_date;
	private String answerStatus;
	private String title;
	private String content;
	private String answer;
	
	public BoardDTO() {}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCategory_1() {
		return category_1;
	}
	public void setCategory_1(String category_1) {
		this.category_1 = category_1;
	}
	public String getCategory_2() {
		return category_2;
	}
	public void setCategory_2(String category_2) {
		this.category_2 = category_2;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMember_id(String memberId) {
		this.memberId = memberId;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getAnswerStatus() {
		return answerStatus;
	}
	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
