package carrot.vo;

public class QnA {
	private String q_num;
	private String pham_no;
	private String q_name;
	private String q_title;
	private String q_contents;
	
	public QnA() {
		super();
	}

	public QnA(String q_num, String pham_no, String q_name, String q_title, String q_contents) {
		super();
		this.q_num = q_num;
		this.pham_no = pham_no;
		this.q_name = q_name;
		this.q_title = q_title;
		this.q_contents = q_contents;
	}

	public String getQ_num() {
		return q_num;
	}

	public void setQ_num(String q_num) {
		this.q_num = q_num;
	}

	public String getPham_no() {
		return pham_no;
	}

	public void setPham_no(String pham_no) {
		this.pham_no = pham_no;
	}

	public String getQ_name() {
		return q_name;
	}

	public void setQ_name(String q_name) {
		this.q_name = q_name;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_contents() {
		return q_contents;
	}

	public void setQ_contents(String q_contents) {
		this.q_contents = q_contents;
	}

	@Override
	public String toString() {
		return "QNA [q_num=" + q_num + ", pham_no=" + pham_no + ", q_name=" + q_name + ", q_title=" + q_title
				+ ", q_contents=" + q_contents + "]";
	}
}
