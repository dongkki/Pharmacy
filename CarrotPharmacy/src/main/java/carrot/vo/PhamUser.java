package carrot.vo;

public class PhamUser {
	private String pham_user_id;
	private String pham_no;
	private String pham_user_pw;

	public PhamUser() {
		super();
	}

	public PhamUser(String pham_id, String pham_no, String pham_user_pw) {
		super();
		this.pham_user_id = pham_id;
		this.pham_no = pham_no;
		this.pham_user_pw = pham_user_pw;
	}

	public String getPham_id() {
		return pham_user_id;
	}

	public void setPham_id(String pham_id) {
		this.pham_user_id = pham_id;
	}

	public String getPham_no() {
		return pham_no;
	}

	public void setPham_no(String pham_no) {
		this.pham_no = pham_no;
	}

	public String getPham_user_pw() {
		return pham_user_pw;
	}

	public void setPham_user_pw(String pham_user_pw) {
		this.pham_user_pw = pham_user_pw;
	}

	@Override
	public String toString() {
		return "PhamUser [pham_id=" + pham_user_id + ", pham_no=" + pham_no + ", pham_user_pw=" + pham_user_pw + "]";
	}
}
