package com.Final.Final1.admin.model;

import java.util.Date;

public class AdminDTO {
	
	private String User_name;
	private String User_id;
	private String User_nickname;
	private String Email_address;
	private String Phone_num;
	private Date SignDate;
	private int User_score;
	
	private int userCount;
	
	private int Post_num;
	private String boardCode;
	private String Post_title;
	private String Post_writer;
	private Date Post_cr_date;
	private int Post_view;
	
	private int userBoardCount;
	private int admin_BoardMem;
	private String Post_contents;
	
	private String Notice_writer;
	private String Notice_title;
	private String Notice_contents;
	
	private int Notice_num;


	public int getNotice_num() {
		return Notice_num;
	}
	public void setNotice_num(int notice_num) {
		Notice_num = notice_num;
	}
	public String getNotice_writer() {
		return Notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		Notice_writer = notice_writer;
	}
	public String getNotice_title() {
		return Notice_title;
	}
	public void setNotice_title(String notice_title) {
		Notice_title = notice_title;
	}
	public String getNotice_contents() {
		return Notice_contents;
	}
	public void setNotice_contents(String notice_contents) {
		Notice_contents = notice_contents;
	}

	//select_option
	private String select;
		
	public String getSelect() {
			return select;
		}
		public void setSelect(String select) {
			this.select = select;
		}

	
	public String getPost_contents() {
		return Post_contents;
	}
	public void setPost_contents(String post_contents) {
		Post_contents = post_contents;
	}
	public int getAdmin_BoardMem() {
		return admin_BoardMem;
	}
	public void setAdmin_BoardMem(int admin_BoardMem) {
		this.admin_BoardMem = admin_BoardMem;
	}

	public int getUserBoardCount() {
		return userBoardCount;
	}
	public void setUserBoardCount(int userBoardCount) {
		this.userBoardCount = userBoardCount;
	}
	
	public int getPost_num() {
		return Post_num;
	}
	public void setPost_num(int post_num) {
		Post_num = post_num;
	}

	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public String getPost_title() {
		return Post_title;
	}
	public void setPost_title(String post_title) {
		Post_title = post_title;
	}
	public String getPost_writer() {
		return Post_writer;
	}
	public void setPost_writer(String post_writer) {
		Post_writer = post_writer;
	}
	public Date getPost_cr_date() {
		return Post_cr_date;
	}
	public void setPost_cr_date(Date post_cr_date) {
		Post_cr_date = post_cr_date;
	}
	public int getPost_view() {
		return Post_view;
	}
	public void setPost_view(int post_view) {
		Post_view = post_view;
	}

	
	public int getUserCount() {
		return userCount;
	}
	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}
	
	
	public String getUser_name() {
		return User_name;
	}
	public void setUser_name(String user_name) {
		User_name = user_name;
	}
	public String getUser_id() {
		return User_id;
	}
	public void setUser_id(String user_id) {
		User_id = user_id;
	}
	public String getUser_nickname() {
		return User_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		User_nickname = user_nickname;
	}
	public String getEmail_address() {
		return Email_address;
	}
	public void setEmail_address(String email_address) {
		Email_address = email_address;
	}
	public String getPhone_num() {
		return Phone_num;
	}
	public void setPhone_num(String phone_num) {
		Phone_num = phone_num;
	}
	public Date getSignDate() {
		return SignDate;
	}
	public void setSignDate(Date signDate) {
		SignDate = signDate;
	}
	public int getUser_score() {
		return User_score;
	}
	public void setUser_score(int user_score) {
		User_score = user_score;
	}
	
	@Override
	public String toString() {
		return "AdminDTO [User_name="+User_name+", User_id="+User_id+", User_nickname="+User_nickname+""
				+ ", Email_address="+Email_address+", Phone_num="+Phone_num+", SignDate="+SignDate+", "
						+ "User_score="+User_score+", userBoardCount="+userBoardCount+","
								+ "Post_contents="+Post_contents+"]";
	}
	
	

}


