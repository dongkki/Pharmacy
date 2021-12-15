package carrot.vo;

public class SearchPham {
	private String pham_no;
	private String pham_name;
	private String pham_tell;
	private String location_gu;
	private String location_address;
	private String location_lat; 
	private String location_lon;
	public SearchPham() {
		super();
	}
	public SearchPham(String pham_no, String pham_name, String pham_tell, String location_gu, String location_address,
			String location_lat, String location_lon) {
		super();
		this.pham_no = pham_no;
		this.pham_name = pham_name;
		this.pham_tell = pham_tell;
		this.location_gu = location_gu;
		this.location_address = location_address;
		this.location_lat = location_lat;
		this.location_lon = location_lon;
	}
	public String getPham_no() {
		return pham_no;
	}
	public void setPham_no(String pham_no) {
		this.pham_no = pham_no;
	}
	public String getPham_name() {
		return pham_name;
	}
	public void setPham_name(String pham_name) {
		this.pham_name = pham_name;
	}
	public String getPham_tell() {
		return pham_tell;
	}
	public void setPham_tell(String pham_tell) {
		this.pham_tell = pham_tell;
	}
	public String getLocation_gu() {
		return location_gu;
	}
	public void setLocation_gu(String location_gu) {
		this.location_gu = location_gu;
	}
	public String getLocation_address() {
		return location_address;
	}
	public void setLocation_address(String location_address) {
		this.location_address = location_address;
	}
	public String getLocation_lat() {
		return location_lat;
	}
	public void setLocation_lat(String location_lat) {
		this.location_lat = location_lat;
	}
	public String getLocation_lon() {
		return location_lon;
	}
	public void setLocation_lon(String location_lon) {
		this.location_lon = location_lon;
	}
	@Override
	public String toString() {
		return "SearchPham [pham_no=" + pham_no + ", pham_name=" + pham_name + ", pham_tell=" + pham_tell
				+ ", location_gu=" + location_gu + ", location_address=" + location_address + ", location_lat="
				+ location_lat + ", location_lon=" + location_lon + "]";
	}
	
	
}
