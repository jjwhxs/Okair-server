package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.AssetsNormal;
import com.iss.okair.model.AssetsNormalModel;

public interface AssetsNormalMapper
{
	List<AssetsNormal> selectByExample(AssetsNormalModel model);
}
