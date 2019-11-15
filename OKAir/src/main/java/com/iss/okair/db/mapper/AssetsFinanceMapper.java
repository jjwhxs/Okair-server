package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.AssetsFinance;
import com.iss.okair.model.AssetsFinanceModel;

public interface AssetsFinanceMapper
{
	List<AssetsFinance> selectByExample(AssetsFinanceModel model);
	AssetsFinance selectByPrimaryKey(String id);
	int addAssetsFinance(AssetsFinance assetsFinance);
	int countAll();
	int updateAssetsFinance(AssetsFinance assetsFinance);
}
