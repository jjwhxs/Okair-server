package com.iss.okair.service.trans;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.common.UuidTools;
import com.iss.okair.db.entity.Alltranslist;
import com.iss.okair.db.entity.Assetstrans;
import com.iss.okair.db.entity.CheckInList;
import com.iss.okair.db.entity.CheckOutList;
import com.iss.okair.db.mapper.AlltranslistMapper;
import com.iss.okair.db.mapper.AssetsPermanentMapper;
import com.iss.okair.db.mapper.AssetstransMapper;
import com.iss.okair.db.mapper.CheckInListMapper;
import com.iss.okair.db.mapper.CheckOutListMapper;

@Service
public class AssetstransService
{
	@Autowired
	private AssetstransMapper assetstransMapper; 
	
	@Autowired
	private AssetsPermanentMapper permanentMapper;
	
	@Autowired
	private AlltranslistMapper alltranslistMapper;
	
	@Autowired
	private CheckInListMapper checkMapper;
	
	@Autowired
	private CheckOutListMapper checkoutMapper;
	/*
	 * 入库操作
	 */
	public int insertAssetstrans(Assetstrans assetstrans)
	{
		assetstrans.setTranstype("1");
		assetstrans.setBatchno(AssetstransService.buildBatchNo(permanentMapper.selectByPrimaryKey(assetstrans.getAssetsid()).getAssetscode()));
		assetstrans.setId(UuidTools.buildUUID());
		return assetstransMapper.insertAssetstrans(assetstrans);
	}
	/*
	 * 出库操作
	 */
	
//	public int insertCheckInList(CheckInList check)
//	{
//		c.setTranstype("2");
//	}
	/**
	 * 创建批次编号
	 * @param assetsCode
	 * @return
	 */
	public static String buildBatchNo(String assetsCode)//对批次编号的格式化操作
	{
		Calendar cal = Calendar.getInstance();
		String current = cal.getTimeInMillis() + "";
		String result = String.format("%s-%s", assetsCode, current);
		return result;
	}
	
	public List<Alltranslist> findByAssetsid(String assetsid)
	{
		return alltranslistMapper.selectByAssetsid(assetsid);
	}
	/*
	 * 领用
	 */
	public List<CheckInList> find(CheckInList example)
	{
		example.setAssetstype("per");
		return checkMapper.selectByExample(example);
	}
	/*
	 * 其它资产操作
	 */
	public int trans(Assetstrans trans,String transtype)
	{
		trans.setTranstype(transtype);
		trans.setId(UuidTools.buildUUID());//唯一标识符
		return assetstransMapper.insertAssetstrans(trans);
	}
	
	/*
	 * 转移
	 */
	public List<CheckOutList> findout(CheckOutList example)
	{
		example.setAssetstype("per");
		return checkoutMapper.selectByExample(example);
	}
	/*public Alltranslist selectByHandler(String handleremp)
	{
		return alltranslistMapper.selectByHandleremp(handleremp);
	}*/
}
