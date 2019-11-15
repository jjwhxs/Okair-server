package com.iss.okair.db.entity;

import java.util.Date;

public class AssetsFinance
{
	private String id;
	private String assetscode;
	private Integer assetstype;
	private String namecn;
	private float unitamount;
	private String financetype;
	private String organization;
	private Integer cycle;
	private boolean autocycle;
	private String refbankno;
	private Date createdate;
	private String createuser;
	private String comment;
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getAssetscode()
	{
		return assetscode;
	}
	public void setAssetscode(String assetscode)
	{
		this.assetscode = assetscode;
	}
	public Integer getAssetstype()
	{
		return assetstype;
	}
	public void setAssetstype(Integer assetstype)
	{
		this.assetstype = assetstype;
	}
	public String getNamecn()
	{
		return namecn;
	}
	public void setNamecn(String namecn)
	{
		this.namecn = namecn;
	}
	public float getUnitamount()
	{
		return unitamount;
	}
	public void setUnitamount(float unitamount)
	{
		this.unitamount = unitamount;
	}
	public String getFinancetype()
	{
		return financetype;
	}
	public void setFinancetype(String financetype)
	{
		this.financetype = financetype;
	}
	public String getOrganization()
	{
		return organization;
	}
	public void setOrganization(String organization)
	{
		this.organization = organization;
	}
	public Integer getCycle()
	{
		return cycle;
	}
	public void setCycle(Integer cycle)
	{
		this.cycle = cycle;
	}
	public boolean getAutocycle()
	{
		return autocycle;
	}
	public void setAutocycle(boolean autocycle)
	{
		this.autocycle = autocycle;
	}
	public String getRefbankno()
	{
		return refbankno;
	}
	public void setRefbankno(String refbankno)
	{
		this.refbankno = refbankno;
	}
	public Date getCreatedate()
	{
		return createdate;
	}
	public void setCreatedate(Date createdate)
	{
		this.createdate = createdate;
	}
	public String getCreateuser()
	{
		return createuser;
	}
	public void setCreateuser(String createuser)
	{
		this.createuser = createuser;
	}
	public String getComment()
	{
		return comment;
	}
	public void setComment(String comment)
	{
		this.comment = comment;
	}
	
}
