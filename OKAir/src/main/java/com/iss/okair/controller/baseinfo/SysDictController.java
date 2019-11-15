package com.iss.okair.controller.baseinfo;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//import com.iss.okair.db.entity.AssetsPermanent;
//import com.iss.okair.db.entity.AssetsPermanentCity;
import com.iss.okair.db.entity.Dicttype;
import com.iss.okair.db.entity.Sysdict;
//import com.iss.okair.model.AssetsPermanentModel;
//import com.iss.okair.service.assets.AssetsPermanentService;
import com.iss.okair.service.baseinfo.SysDictService;
@RestController
@RequestMapping("logic/baseInfo/sysDict")
public class SysDictController {
   @Autowired
   private SysDictService service;
   
//   @Autowired
//   private AssetsPermanentService assetsService;
   @RequestMapping("/find")
   public List<Sysdict> dictList(Sysdict example){
	   return service.dictList(example);
   }
   
   @RequestMapping("/typeList")
 public List<Dicttype> typeList(){
   return service.typeList();
}
   
	
//	@RequestMapping("/city")
//	public List<AssetsPermanent> selectCity(AssetsPermanentModel model)
//	{
//		return assetsService.find(model);
//	}
	@RequestMapping("/{typeCode}")
	public List<Sysdict> findList(@PathVariable String typeCode){
		return service.findList(typeCode);
	}
}
