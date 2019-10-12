package com.zhiyou100.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou100.model.Emp;
import com.zhiyou100.service.EmpService;

/** 

* @author 作者 : yanpei

* @version 创建时间：2019年9月3日 下午5:33:58 

* 类说明 

*/
@Controller
@RequestMapping("/user")
public class ListEmp {

	@Autowired
	private  EmpService empService;
	
	@RequestMapping(value="/list", method = {RequestMethod.POST,RequestMethod.GET})
	public String ListAllUsers(@RequestParam(defaultValue="1")int pageNo,@RequestParam(defaultValue="")String keyword,
							@RequestParam(defaultValue="")String space,Model model){
		System.out.println(keyword);
		System.out.println(pageNo);
		Map<String,Object> map = new HashMap();
		map.put("keyword",keyword);
		map.put("space",space);
		//总条数
		int total = empService.count(map);
		PageHelper.startPage(pageNo, 3);
		
		List<Emp> list = empService.ListAllUsers(map);
		
		for (Emp emp : list) {
			System.out.println(emp);
		}
		PageInfo<Emp> pageInfo = new PageInfo<Emp>(list);
		model.addAttribute("list", pageInfo.getList());
//		model.addAttribute("list",list);
		model.addAttribute("map",map);
		model.addAttribute("page", pageInfo);
		return "list";
	}
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String toAdd() {
		return "add";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String addNewEmp(Emp emp ,Model model) {
		System.out.println(emp);
		boolean result = empService.addNewUser(emp);
		if(result) {
			
			return "forward:/user/list";
		}else {
			model.addAttribute("msg","添加失败");
			return "add";
		}
	}
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String deleteUser(int empno) {
		System.out.println(empno);
		empService.deleteEmpById(empno);
		return "forward:/user/list";
	}
}
