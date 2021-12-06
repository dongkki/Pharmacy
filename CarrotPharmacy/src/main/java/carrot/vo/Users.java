package carrot.vo;

public class Users {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_tell;

	public Users() {
		super();
	}

	public Users(String user_id, String user_pw, String user_name, String user_tell) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_tell = user_tell;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_tell() {
		return user_tell;
	}

	public void setUser_tell(String user_tell) {
		this.user_tell = user_tell;
	}

	@Override
	public String toString() {
		return "Users [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_tell="
				+ user_tell + "]";
	}

}
