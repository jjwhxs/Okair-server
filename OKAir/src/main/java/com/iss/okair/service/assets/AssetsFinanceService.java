package com.iss.okair.service.assets;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.common.StringTools;
import com.iss.common.UuidTools;
import com.iss.okair.db.entity.AssetsFinance;
import com.iss.okair.db.mapper.AssetsFinanceMapper;
import com.iss.okair.model.AssetsFinanceModel;

import com.iss.okair.db.entity.categroy;
import com.iss.okair.db.mapper.CategroyMapper;

@Service
public class AssetsFinanceService
{
	@Autowired
	private AssetsFinanceMapper financeMapper;
	
	@Autowired
	private CategroyMapper mapper;
	
	public List<AssetsFinance> selectExample(AssetsFinanceModel model)
	{
		return financeMapper.selectByExample(model);
	}
	
	public boolean save(AssetsFinance assetsFinance)
	{
		if(StringTools.isNullOrEmpty(assetsFinance.getId()))
		{
			assetsFinance.setAssetscode(this.buildAssetsCode(assetsFinance.getAssetstype()));
			assetsFinance.setId(UuidTools.buildUUID());
			return financeMapper.addAssetsFinance(assetsFinance)==1?true:false;
		}
		else
		{
			if(financeMapper.selectByPrimaryKey(assetsFinance.getId())!=null)
			{
				return financeMapper.updateAssetsFinance(assetsFinance)==1?true:false;
			}
		}
		
		return true;
	}
	
	private String buildAssetsCode(Integer assetstype)
	{
		categroy currentCategroy=mapper.CategroyPrimarykey(assetstype);
		String tmp=String.format("PER%s-%06d", currentCategroy.getCode(),financeMapper.countAll()+1);
		return tmp;
	}
}
