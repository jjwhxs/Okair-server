package com.iss.okair.service.assets;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.common.StringTools;
import com.iss.common.UuidTools;
import com.iss.okair.db.entity.AssetsPermanent;
//import com.iss.okair.db.entity.AssetsPermanent;
import com.iss.okair.db.entity.categroy;
//import com.iss.okair.db.entity.AssetsPermanentCity;
//import com.iss.okair.db.mapper.AssetsPermanentCityMapper;
import com.iss.okair.db.mapper.AssetsPermanentMapper;
import com.iss.okair.db.mapper.CategroyMapper;
import com.iss.okair.model.AssetsPermanentModel;

@Service
public class AssetsPermanentService
{
	@Autowired
	private AssetsPermanentMapper mapper;
	
	@Autowired
	private CategroyMapper categroyMapper;
	/*@Autowired
	private AssetsPermanentCityMapper cityMapper;*/
	
	public List<AssetsPermanent> find(AssetsPermanentModel model)
	{
		return mapper.selectByExample(model);
	}
	
	public boolean save(AssetsPermanent assetsPermanent)
	{
		if(StringTools.isNullOrEmpty(assetsPermanent.getId()))
		{
			assetsPermanent.setAssetscode(this.buildAssetsCode(assetsPermanent.getAssetstype()));
			assetsPermanent.setId(UuidTools.buildUUID());
			return mapper.addAssetsPermanent(assetsPermanent)==1?true:false;
		}
		else
		{
			if(mapper.selectByPrimaryKey(assetsPermanent.getId())!=null)
			{
				return mapper.updateAssetsPermanent(assetsPermanent)==1?true:false;
			}
			else
			{
				return false;
			}
		}
		
//		return true;
	}
	
/*	public boolean save(AssetsPermanent assetsPermanent)
	{
		if(StringTools.isNullOrEmpty(assetsPermanent.getId()))
		{
			assetsPermanent.setAssetscode(this.buildAssetsCode(assetsPermanent.getAssetstype()));
			assetsPermanent.setId(UuidTools.buildUUID());
			if(mapper.selectByPrimaryKey(assetsPermanent.getId())!=null)
				return mapper.addAssetsPermanent(assetsPermanent)==1?true:false;
		}
		
		return true;
	}
	*/
	private String buildAssetsCode(Integer assetsType) {


		categroy currentCategory = categroyMapper.CategroyPrimarykey(assetsType);
		
		String tmp = String.format("PER%s-%06d", currentCategory.getCode(), mapper.countAll() + 1);
	
		return tmp;
	}
		
	/*public boolean update(AssetsPermanent assetsPermanent)
	{
		if(mapper.selectByPrimaryKey(assetsPermanent.getId())!=null)
		{
			return mapper.addAssetsPermanent(assetsPermanent)==1?true:false;
		}
		return true;
	}*/
	
//	public List<AssetsPermanentCity> select()
//	{
//		return cityMapper.selectAll();
//	}
}
