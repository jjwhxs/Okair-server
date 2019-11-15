package com.iss.okair.controller.trans;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iss.common.Message;
import com.iss.okair.db.entity.Alltranslist;
import com.iss.okair.db.entity.Assetstrans;
import com.iss.okair.db.entity.CheckInList;
import com.iss.okair.db.entity.CheckOutList;
import com.iss.okair.service.trans.AssetstransService;

@RestController
@RequestMapping("logic/trans/permanent")
public class AssetstransController
{
	@Autowired
	private AssetstransService assetstransService;
	
	@RequestMapping("/instock")
	public Message insertOperation(Assetstrans assetstrans)
	{
		Message msg=new Message();
		msg.setError(true);
		if(assetstransService.insertAssetstrans(assetstrans)==1)
		{
			msg.setError(false);
		}
		return msg;
	}
	
	@RequestMapping("/history/{assetsid}")
	public List<Alltranslist> select(@PathVariable String assetsid)
	{
		return assetstransService.findByAssetsid(assetsid);
	}
	
	@RequestMapping("/checkin/list")
	public List<CheckInList> select(CheckInList example)
	{
		return assetstransService.find(example);
	}
	
	@RequestMapping("/checkout/list")
	public List<CheckOutList> selectout(CheckOutList example)
	{
		return assetstransService.findout(example);
	}
	
	@RequestMapping("/{transtype}")
	public Message insertOp(Assetstrans assetstrans,@PathVariable String transtype)
	{
		Message msg=new Message();
		msg.setError(true);
		if(assetstransService.trans(assetstrans, transtype)==1)
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
	
	/*@RequestMapping("/{handleremp}")
	public Alltranslist selectHandleremp(String handleremp)
	{
		return assetstransService.selectByHandler(handleremp);
	}*/
}
