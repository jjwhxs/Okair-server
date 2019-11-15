package com.iss.okair.service.assets;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.okair.db.entity.AssetsNormal;
import com.iss.okair.db.mapper.AssetsNormalMapper;
import com.iss.okair.model.AssetsNormalModel;

@Service
public class AssetsNormalService
{
	@Autowired
	private AssetsNormalMapper normalMapper;
	
	public List<AssetsNormal> find(AssetsNormalModel model)
	{
		return normalMapper.selectByExample(model);
	}
}
