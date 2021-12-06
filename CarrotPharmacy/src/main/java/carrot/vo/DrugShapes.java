package carrot.vo;

public class DrugShapes {
	private String drugCode;
	private String drugShape;
	private String drugColor;
	private String drugImage;

	public DrugShapes() {
		super();
	}

	public DrugShapes(String drugCode, String drugShape, String drugColor, String drugImage) {
		super();
		this.drugCode = drugCode;
		this.drugShape = drugShape;
		this.drugColor = drugColor;
		this.drugImage = drugImage;
	}

	public String getDrugCode() {
		return drugCode;
	}

	public void setDrugCode(String drugCode) {
		this.drugCode = drugCode;
	}

	public String getDrugShape() {
		return drugShape;
	}

	public void setDrugShape(String drugShape) {
		this.drugShape = drugShape;
	}

	public String getDrugColor() {
		return drugColor;
	}

	public void setDrugColor(String drugColor) {
		this.drugColor = drugColor;
	}

	public String getDrugImage() {
		return drugImage;
	}

	public void setDrugImage(String drugImage) {
		this.drugImage = drugImage;
	}

	@Override
	public String toString() {
		return "DRUG_SHAPES [drugCode=" + drugCode + ", drugShape=" + drugShape + ", drugColor=" + drugColor
				+ ", drugImage=" + drugImage + "]";
	}

}
