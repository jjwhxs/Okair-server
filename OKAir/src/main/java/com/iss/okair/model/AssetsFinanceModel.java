package com.iss.okair.model;

public class AssetsFinanceModel
{
	private String assetsCode;
	private String assetsType1;
	private String assetsType2;
	private String assetsNameCn;
	private String organization;
	private String unitAmount;
	private Integer financeType;
	private String refBankNo;
	private Integer cycle;
	private boolean autoCycle;
	public String getAssetsCode()
	{
		return assetsCode;
	}
	public void setAssetsCode(String assetsCode)
	{
		this.assetsCode = assetsCode;
	}
	public String getAssetsType1()
	{
		return assetsType1;
	}
	public void setAssetsType1(String assetsType1)
	{
		this.assetsType1 = assetsType1;
	}
	public String getAssetsType2()
	{
		return assetsType2;
	}
	public void setAssetsType2(String assetsType2)
	{
		this.assetsType2 = assetsType2;
	}
	public String getAssetsNameCn()
	{
		return assetsNameCn;
	}
	public void setAssetsNameCn(String assetsNameCn)
	{
		this.assetsNameCn = assetsNameCn;
	}
	public String getOrganization()
	{
		return organization;
	}
	public void setOrganization(String organization)
	{
		this.organization = organization;
	}
	public String getUnitAmount()
	{
		return unitAmount;
	}
	public void setUnitAmount(String unitAmount)
	{
		this.unitAmount = unitAmount;
	}
	public Integer getFinanceType()
	{
		return financeType;
	}
	public void setFinanceType(Integer financeType)
	{
		this.financeType = financeType;
	}
	public String getRefBankNo()
	{
		return refBankNo;
	}
	public void setRefBankNo(String refBankNo)
	{
		this.refBankNo = refBankNo;
	}
	public Integer getCycle()
	{
		return cycle;
	}
	public void setCycle(Integer cycle)
	{
		this.cycle = cycle;
	}
	public boolean isAutoCycle()
	{
		return autoCycle;
	}
	public void setAutoCycle(boolean autoCycle)
	{
		this.autoCycle = autoCycle;
	}
	
}
