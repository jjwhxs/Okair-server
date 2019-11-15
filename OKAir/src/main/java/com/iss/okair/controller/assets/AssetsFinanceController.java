package com.iss.okair.controller.assets;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iss.common.Message;
import com.iss.okair.db.entity.AssetsFinance;
import com.iss.okair.model.AssetsFinanceModel;
import com.iss.okair.service.assets.AssetsFinanceService;

@RestController
@RequestMapping("logic/assets/finance")
public class AssetsFinanceController
{
	@Autowired
	private AssetsFinanceService financeService;
	
	@RequestMapping("/list")
	public List<AssetsFinance> selectAssetsFinance(AssetsFinanceModel model)
	{
		return financeService.selectExample(model);
	}
	
	@RequestMapping("/save")
	public Message operation(AssetsFinance assetsFinance)
	{
		Message msg=new Message();
		if(financeService.save(assetsFinance))
		{
			msg.setError(false);
			msg.setMsg("保存成功");
		}
		else
		{
			msg.setError(true);
			msg.setMsg("保存失败");
		}
		return msg;
	}
}
