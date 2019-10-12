package com.zhiyou100.service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Emp;

/** 

* @author 作者 : yanpei

* @version 创建时间：2019年9月6日 下午4:07:03 

* 类说明 

*/
public interface EmpService {

	List<Emp> ListAllUsers(Map<String, Object> map);

	int count(Map<String, Object> map);

	void deleteEmpById(int empno);

	boolean addNewUser(Emp emp);

}
