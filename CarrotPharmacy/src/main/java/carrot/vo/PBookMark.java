package carrot.vo;

public class PBookMark {

	private String pham_no;
	private String user_id;
	private String pbook_score;

	public PBookMark() {
		super();
	}

	public PBookMark(String pham_no, String user_id, String pbook_score) {
		super();
		this.pham_no = pham_no;
		this.user_id = user_id;
		this.pbook_score = pbook_score;
	}

	public String getPham_no() {
		return pham_no;
	}

	public void setPham_no(String pham_no) {
		this.pham_no = pham_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPbook_score() {
		return pbook_score;
	}

	public void setPbook_score(String pbook_score) {
		this.pbook_score = pbook_score;
	}

	@Override
	public String toString() {
		return "PBookMark [pham_no=" + pham_no + ", user_id=" + user_id + ", pbook_score=" + pbook_score + "]";
	}

}
