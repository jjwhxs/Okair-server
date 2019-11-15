package com.iss.okair.db.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotBlank;

public class AssetsPermanent
{
	private String id;
	private String assetscode;
	private Integer assetstype;
    @NotBlank(message= "{bean.notNull}")
	private String city;
    @NotBlank(message= "{bean.notNull}")
	private String address;
	@Min(value=1,message="{bean.min}")
	private Integer scale;
    @NotBlank(message= "{bean.notNull}")
	private String util;
    @Min(value=1,message="{bean.min}")
	private BigDecimal area;
	private Integer equitytype;
	@NotBlank(message= "{bean.notNull}")
	private String namecn;
	private Date createdate;
	private String createuser;
	private String comment;

    public String getId() {
        return id;
    }


    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }


    public String getAssetscode() {
        return assetscode;
    }


    public void setAssetscode(String assetscode) {
        this.assetscode = assetscode == null ? null : assetscode.trim();
    }


    public Integer getAssetstype() {
        return assetstype;
    }


    public void setAssetstype(Integer assetstype) {
        this.assetstype = assetstype;
    }


    public String getCity() {
        return city;
    }


    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }


    public String getAddress() {
        return address;
    }


    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }


    public Integer getScale() {
        return scale;
    }


    public void setScale(Integer scale) {
        this.scale = scale;
    }


    public String getUtil() {
        return util;
    }


    public void setUtil(String util) {
        this.util = util == null ? null : util.trim();
    }


    public BigDecimal getArea() {
        return area;
    }


    public void setArea(BigDecimal area) {
        this.area = area;
    }


    public Integer getEquitytype() {
        return equitytype;
    }


    public void setEquitytype(Integer equitytype) {
        this.equitytype = equitytype;
    }


    public String getNamecn() {
        return namecn;
    }


    public void setNamecn(String namecn) {
        this.namecn = namecn == null ? null : namecn.trim();
    }


    public Date getCreatedate() {
        return createdate;
    }


    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }


    public String getCreateuser() {
        return createuser;
    }


    public void setCreateuser(String createuser) {
        this.createuser = createuser == null ? null : createuser.trim();
    }


    public String getComment() {
        return comment;
    }


    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
	
}
