package com.iss.okair.controller.assets;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iss.okair.db.entity.AssetsNormal;
import com.iss.okair.model.AssetsNormalModel;
import com.iss.okair.service.assets.AssetsNormalService;

@RestController
@RequestMapping("logic/assets/normal")
public class AssetsNormalController
{
	@Autowired
	private AssetsNormalService normalService;
	
	@RequestMapping("/list")
	public List<AssetsNormal> select(AssetsNormalModel model)
	{
		return normalService.find(model);
	}
}
