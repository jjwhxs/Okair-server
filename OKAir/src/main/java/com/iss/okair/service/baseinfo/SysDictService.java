package com.iss.okair.service.baseinfo;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.iss.okair.db.entity.Dicttype;
import com.iss.okair.db.entity.Sysdict;
import com.iss.okair.db.mapper.DicttypeMapper;
import com.iss.okair.db.mapper.SysdictMapper;
@Service
public class SysDictService {
    @Autowired
    private SysdictMapper mapper;
    @Autowired
    private DicttypeMapper dicmapper;
    public List<Sysdict> dictList(Sysdict example){
    	return mapper.finddict(example);
    }
    public List<Dicttype> typeList(){
    	return dicmapper.findtype();
    }
     
    public List<Sysdict> findList(String typeCode){
    	return mapper.findlist(typeCode);
    }
}