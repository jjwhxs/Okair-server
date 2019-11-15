package com.iss.okair.controller.assets;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iss.common.Message;
import com.iss.okair.db.entity.AssetsPermanent;
//import com.iss.okair.db.entity.AssetsPermanentCity;
import com.iss.okair.model.AssetsPermanentModel;
import com.iss.okair.service.assets.AssetsPermanentService;

@RestController
@RequestMapping("logic/assets/permanent")
public class AssetsPermanentController
{
	@Autowired
	private AssetsPermanentService service;
	
	@RequestMapping("/list")
	public List<AssetsPermanent> find(AssetsPermanentModel model)
	{
		return service.find(model);
	}
	
	@RequestMapping("/save")
	public Message operation(AssetsPermanent assetsPermanent,BindingResult bindingResult)
	{
		Message msg=new Message();
		
		if(bindingResult.hasErrors()) {
			msg.setError(true);
			msg.setFieldErrors(bindingResult.getFieldErrors());
			return msg;
		}
		
		if(service.save(assetsPermanent))
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
	
	/*@RequestMapping("/save")
	public Message updateDate(AssetsPermanent assetsPermanent)
	{
		Message msg=new Message();
		if(service.update(assetsPermanent))
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
	}*/
}
