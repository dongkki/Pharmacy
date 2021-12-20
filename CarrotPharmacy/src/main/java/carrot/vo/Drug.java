package carrot.vo;

public class Drug {
	
	private String drugCode;
	private String drugName;
	private String drugEffect;
	private String drugUsage;
	private String drugPrecautions;
	private String drugHowStore;
	private String drugManufactoror;
	private String drugImage;
	
	public Drug() {
		super();
	}
	
	public Drug(String drugCode, String drugName, String drugEffect, String drugUsage, String drugPrecautions,
			String drugHowStore, String drugManufactoror, String drugImage) {
		super();
		this.drugCode = drugCode;
		this.drugName = drugName;
		this.drugEffect = drugEffect;
		this.drugUsage = drugUsage;
		this.drugPrecautions = drugPrecautions;
		this.drugHowStore = drugHowStore;
		this.drugManufactoror = drugManufactoror;
		this.drugImage = drugImage;
	}

	public String getDrugCode() {
		return drugCode;
	}

	public void setDrugCode(String drugCode) {
		this.drugCode = drugCode;
	}

	public String getDrugName() {
		return drugName;
	}

	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}

	public String getDrugEffect() {
		return drugEffect;
	}

	public void setDrugEffect(String drugEffect) {
		this.drugEffect = drugEffect;
	}

	public String getDrugUsage() {
		return drugUsage;
	}

	public void setDrugUsage(String drugUsage) {
		this.drugUsage = drugUsage;
	}

	public String getDrugPrecautions() {
		return drugPrecautions;
	}

	public void setDrugPrecautions(String drugPrecautions) {
		this.drugPrecautions = drugPrecautions;
	}

	public String getDrugHowStore() {
		return drugHowStore;
	}

	public void setDrugHowStore(String drugHowStore) {
		this.drugHowStore = drugHowStore;
	}

	public String getDrugManufactoror() {
		return drugManufactoror;
	}

	public void setDrugManufactoror(String drugManufactoror) {
		this.drugManufactoror = drugManufactoror;
	}

	public String getDrugImage() {
		return drugImage;
	}

	public void setDrugImage(String drugImage) {
		this.drugImage = drugImage;
	}

	@Override
	public String toString() {
		return "Drug [drugCode=" + drugCode + ", drugName=" + drugName + ", drugEffect=" + drugEffect + ", drugUsage="
				+ drugUsage + ", drugPrecautions=" + drugPrecautions + ", drugHowStore=" + drugHowStore
				+ ", drugManufactoror=" + drugManufactoror + ", drugImage=" + drugImage + "]";
	}
}
