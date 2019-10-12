package com.zhiyou100.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou100.mapper.EmpMapper;
import com.zhiyou100.model.Emp;

/** 

* @author 作者 : yanpei

* @version 创建时间：2019年9月6日 下午4:08:28 

* 类说明 

*/
@Service
public class EmpServiceImp implements EmpService{

	@Autowired
	private EmpMapper empMapper;
	
	
	
	public int count(Map<String, Object> map) {
		int total =empMapper.count(map);
		return total;
	}
	
	public void deleteEmpById(int empno) {
		// TODO Auto-generated method stub
		empMapper.deleteEmpById(empno);
	}

	
	
	public List<Emp> ListAllUsers(Map<String, Object> map) {
		// TODO Auto-generated method stub
		List<Emp> list = empMapper.ListAllUsers(map);
		return list;
	}
	public boolean addNewUser(Emp emp) {
		// TODO Auto-generated method stub
		int row = empMapper.addNewUser(emp );
		if(row>0) {
			
			return true;
		} else {
			
			return false;
		}
	}

}
