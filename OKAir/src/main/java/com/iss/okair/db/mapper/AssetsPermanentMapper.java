package com.iss.okair.db.mapper;

import java.util.List;



import com.iss.okair.db.entity.AssetsPermanent;
import com.iss.okair.model.AssetsPermanentModel;

public interface AssetsPermanentMapper
{
	List<AssetsPermanent> selectByExample(AssetsPermanentModel model);
	int addAssetsPermanent(AssetsPermanent assetsPermanent);
	int countAll();
	AssetsPermanent selectByPrimaryKey(String id);
	int updateAssetsPermanent(AssetsPermanent assetsPermanent);
}
