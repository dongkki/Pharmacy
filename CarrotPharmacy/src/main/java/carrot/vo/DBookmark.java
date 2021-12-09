package carrot.vo;

public class DBookmark {
	private String drug_code;
	private String user_id;
	private String dbook_score;

	public DBookmark() {
		super();
	}

	public DBookmark(String drug_code, String user_id, String dbook_score) {
		super();
		this.drug_code = drug_code;
		this.user_id = user_id;
		this.dbook_score = dbook_score;
	}

	public String getDrug_code() {
		return drug_code;
	}

	public void setDrug_code(String drug_code) {
		this.drug_code = drug_code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDbook_score() {
		return dbook_score;
	}

	public void setDbook_score(String dbook_score) {
		this.dbook_score = dbook_score;
	}

	@Override
	public String toString() {
		return "DbookMark [drug_code=" + drug_code + ", user_id=" + user_id + ", dbook_score=" + dbook_score + "]";
	}

}
