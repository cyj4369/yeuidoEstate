package com.yeouido.estate.object.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yeouido.estate.AbstractDAO;

@Repository("objectDAO")
public class ObjectDAO extends AbstractDAO
{

   public int insertObject(Map<String, Object> map) throws Exception{
       return insert("objectDAO.insertObject",map);
   }
   public int modifyObject(Map<String, Object> map) throws Exception{
       return insert("objectDAO.modifyObject",map);
   }
   //
   @SuppressWarnings("unchecked")
   public List<Object> selectObjectCnt(Map map) throws Exception{
       return selectList("objectDAO.selectObjectCnt", map);
   }
   
   @SuppressWarnings("unchecked")
   public List<Object> selectObjectList(Map map) throws Exception{
       return selectList("objectDAO.selectObjectList", map);
   }
   

   @SuppressWarnings("unchecked")
   public Map selectObjectInfo(Map map) throws Exception{
       return selectMap("objectDAO.selectObjectInfo", map);
   }
   
   

}
