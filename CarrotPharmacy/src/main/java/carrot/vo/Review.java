package carrot.vo;

import java.util.Date;

public class Review {
	private int re_num;
	private String pham_no;
	private String re_id;
	private String re_contents;
	private Date create_date;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Review(int re_num, String pham_no, String re_id, String re_contents, Date create_date) {
		super();
		this.re_num = re_num;
		this.pham_no = pham_no;
		this.re_id = re_id;
		this.re_contents = re_contents;
		this.create_date = create_date;
	}

	public int getRe_num() {
		return re_num;
	}

	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}

	public String getPham_no() {
		return pham_no;
	}

	public void setPham_no(String pham_no) {
		this.pham_no = pham_no;
	}

	public String getRe_id() {
		return re_id;
	}

	public void setRe_id(String re_id) {
		this.re_id = re_id;
	}

	public String getRe_contents() {
		return re_contents;
	}

	public void setRe_contents(String re_contents) {
		this.re_contents = re_contents;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	@Override
	public String toString() {
		return "Review [re_num=" + re_num + ", pham_no=" + pham_no + ", re_id=" + re_id + ", re_contents=" + re_contents
				+ ", create_date=" + create_date + "]";
	}

	
}