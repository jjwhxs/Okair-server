package com.iss.okair.service.baseinfo;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.okair.db.entity.CategroyInterface;
import com.iss.okair.db.entity.categroy;
import com.iss.okair.db.mapper.CategroyInterfaceMapper;
import com.iss.okair.db.mapper.CategroyMapper;

@Service
public class CategoryService {
		@Autowired
		private CategroyMapper mapper;
		@Autowired
		private CategroyInterfaceMapper categroyInterfaceMapper;
		public List<categroy> selectAll(categroy c){
			return mapper.select(c);
		}
	
        public List<CategroyInterface> SelectAll(){
        	return categroyInterfaceMapper.selectAll();
        }
        
        public categroy findById(Integer id)
        {
        	return mapper.CategroyPrimarykey(id);
        }
        
        public List<categroy> categroyId(Integer parentid)
        {
        	return mapper.categroyParentId(parentid);
        
        }

	}


