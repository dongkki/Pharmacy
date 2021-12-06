package carrot.vo;

public class Location {
	private String pham_no;
	private String location_gu;
	private String location_address;
	private String location_summary;
	private String location_latitude;
	private String location_longitude;

	public Location() {
		super();
	}

	public Location(String pham_no, String location_gu, String location_address, String location_summary,
			String location_latitude, String location_longtitude) {
		super();
		this.pham_no = pham_no;
		this.location_gu = location_gu;
		this.location_address = location_address;
		this.location_summary = location_summary;
		this.location_latitude = location_latitude;
		this.location_longitude = location_longtitude;
	}

	public String getPham_no() {
		return pham_no;
	}

	public void setPham_no(String pham_no) {
		this.pham_no = pham_no;
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

	public String getLocation_summary() {
		return location_summary;
	}

	public void setLocation_summary(String location_summary) {
		this.location_summary = location_summary;
	}

	public String getLocation_latitude() {
		return location_latitude;
	}

	public void setLocation_latitude(String location_latitude) {
		this.location_latitude = location_latitude;
	}

	public String getLocation_longtitude() {
		return location_longitude;
	}

	public void setLocation_longtitude(String location_longtitude) {
		this.location_longitude = location_longtitude;
	}

	@Override
	public String toString() {
		return "Location [pham_no=" + pham_no + ", location_gu=" + location_gu + ", location_address="
				+ location_address + ", location_summary=" + location_summary + ", location_latitude="
				+ location_latitude + ", location_longtitude=" + location_longitude + "]";
	}

}
