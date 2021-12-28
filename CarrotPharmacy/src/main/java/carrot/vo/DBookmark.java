package carrot.vo;

public class DBookmark {
	private String user_id;
	private String drug_code;
	private String drug_name;
	private String drug_manufactoror;
	private String drug_effect;
	private String drug_image;

	public DBookmark() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DBookmark(String user_id, String drug_code, String drug_name, String drug_manufactoror, String drug_effect,
			String drug_image) {
		super();
		this.user_id = user_id;
		this.drug_code = drug_code;
		this.drug_name = drug_name;
		this.drug_manufactoror = drug_manufactoror;
		this.drug_effect = drug_effect;
		this.drug_image = drug_image;
	}

	@Override
	public String toString() {
		return "DBookmark [user_id=" + user_id + ", drug_code=" + drug_code + ", drug_name=" + drug_name
				+ ", drug_manufactoror=" + drug_manufactoror + ", drug_effect=" + drug_effect + ", drug_image="
				+ drug_image + "]";
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDrug_code() {
		return drug_code;
	}

	public void setDrug_code(String drug_code) {
		this.drug_code = drug_code;
	}

	public String getDrug_name() {
		return drug_name;
	}

	public void setDrug_name(String drug_name) {
		this.drug_name = drug_name;
	}

	public String getDrug_manufactoror() {
		return drug_manufactoror;
	}

	public void setDrug_manufactoror(String drug_manufactoror) {
		this.drug_manufactoror = drug_manufactoror;
	}

	public String getDrug_effect() {
		return drug_effect;
	}

	public void setDrug_effect(String drug_effect) {
		this.drug_effect = drug_effect;
	}

	public String getDrug_image() {
		return drug_image;
	}

	public void setDrug_image(String drug_image) {
		this.drug_image = drug_image;
	}

}
