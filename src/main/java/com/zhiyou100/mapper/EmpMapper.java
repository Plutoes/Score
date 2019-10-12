package com.zhiyou100.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Emp;

/** 

* @author 作者 : yanpei

* @version 创建时间：2019年9月6日 下午4:10:01 

* 类说明 

*/
public interface EmpMapper {

	List<Emp> ListAllUsers(Map<String, Object> map);

	int count(Map<String, Object> map);

	void deleteEmpById(int empno);

	int addNewUser(Emp emp);

}
