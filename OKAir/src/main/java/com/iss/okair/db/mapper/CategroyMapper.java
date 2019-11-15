package com.iss.okair.db.mapper;

import java.util.List;


import com.iss.okair.db.entity.categroy;

public interface CategroyMapper {
   List<categroy> select(categroy c);
   categroy CategroyPrimarykey(Integer id);
   List<categroy> categroyParentId(Integer parentid);
}
