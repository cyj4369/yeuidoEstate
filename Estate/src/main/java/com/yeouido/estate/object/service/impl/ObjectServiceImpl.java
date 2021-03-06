package com.yeouido.estate.object.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yeouido.estate.customer.service.impl.CustomerDAO;
import com.yeouido.estate.object.service.ObjectService;

@Service("objectService")
public class ObjectServiceImpl  implements ObjectService
{
   @Resource(name = "objectDAO")
   private ObjectDAO objectDAO;
   
   @Resource(name = "customerDAO")
   private CustomerDAO customerDAO;
   
   /* 물건등록*/
   @Override
   public int insertObject(Map map) throws Exception {
	   Map<String, Object> custMap = customerDAO.selectCustomerConfirm(map);
	   if (("").equals(custMap.get("custId")) || custMap.get("custId") == null ) {
		   map.put("custId", custMap.get("custId2"));
		   customerDAO.insertNewCustomer(map);
	   } else {
		   map.put("custId", custMap.get("custId"));
	   }
	   return objectDAO.insertObject(map);
   }
   /* 물건수정 */
   @Override
   public int modifyObject(Map map) throws Exception {
	   Map<String, Object> custMap = customerDAO.selectCustomerConfirm(map);
	   if (("").equals(custMap.get("custId")) || custMap.get("custId") == null ) {
		   map.put("custId", custMap.get("custId2"));
		   customerDAO.insertNewCustomer(map);
	   } else {
		   map.put("custId", custMap.get("custId"));
	   }
	   return objectDAO.modifyObject(map);
   }
   /* 물건 정보 */
   @Override
   public Map selectObjectInfo(Map map) throws Exception {
	   return objectDAO.selectObjectInfo(map);
   }
   
   /* 물건삭제*/
   @Override
   public int deleteObject(Map map) throws Exception {
	   return objectDAO.deleteObject(map);
   }
   /* 물건갯수 */
   @Override
   public List<Object> selectObjectCnt(Map map) throws Exception {
	   return objectDAO.selectObjectCnt(map);
   }
   /* 물건리스트 */
   @Override
   public List<Map<String,Object>> selectObjectList(Map map) throws Exception {
	   return objectDAO.selectObjectList(map);
   }
   
   
}