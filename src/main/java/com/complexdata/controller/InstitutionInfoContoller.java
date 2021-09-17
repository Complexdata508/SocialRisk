package com.complexdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.complexdata.model.InstitutionInfo;
import com.complexdata.service.InstitutionInfoService;
import com.complexdata.utils.Result;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value = "/institutionInfo")
public class InstitutionInfoContoller {

	@Autowired
	private InstitutionInfoService institutionInfoService;
	
	@RequestMapping("/doInstitutionInfoManagerUI")
	public String doInstitutionInfoManagerUI(){
		return "admin/institution_info_manager";
	}
	
	@RequestMapping("/doInstitutionInfoManagerUI1")
	public String doInstitutionInfoManagerUI1(){
		return "institutionInfo/institution_info_manager";
	}
	
	@RequestMapping("/doInstitutionInfoAddUI")
	public String doInstitutionInfoAddUI(){
		return "institutionInfo/institution_add";
	}

	@RequestMapping("/getZCInstitutionInfos")
	@ResponseBody
	public List<InstitutionInfo> getZCInstitutionInfos(){
		return institutionInfoService.getZCInstitutionInfos();
	}
	@RequestMapping("/getZJInstitutionInfos")
	@ResponseBody
	public List<InstitutionInfo> getZJInstitutionInfos(){
		return institutionInfoService.getZJInstitutionInfos();
	}
	
	/**
	 * 分页查询所有机构信息
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/getPage", method = RequestMethod.GET)
	public PageInfo<InstitutionInfo> getPage(
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "size", required = false, defaultValue = "4") int size,
			@RequestParam(value="institutionNo",required=false,defaultValue="") String institutionNo) {
		return institutionInfoService.getPageByInstitutionNo(institutionNo,pageNum,size);
	}

	/**
	 * 添加机构信息
	 * 
	 * @param institutionInfo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/addInstitutionInfo", method = RequestMethod.POST)
	public Result addInstitutionInfo(@RequestBody(required = true) InstitutionInfo institutionInfo) {

		institutionInfoService.addInstitutionInfo(institutionInfo);
		return new Result(true, "新增成功！");
	}

	/**
	 * 根据机构号查询机构信息
	 * 
	 * @param institutionNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/getByInstitutionNo")
	public InstitutionInfo getByInstitutionNo(@RequestParam(required = true) String institutionNo) {
		return institutionInfoService.getByInstitutionNo(institutionNo);
	}

	/**
	 * 根据机构号修改机构信息
	 * 
	 * @param institutionInfo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/updateByInstitutionNo", method = RequestMethod.PUT)
	public Result updateByInstitutionNo(@RequestBody(required = true) InstitutionInfo institutionInfo) {

		institutionInfoService.updateByInstitutionNo(institutionInfo);
		return new Result(true, "修改成功");

	}

	/**
	 * 根据机构号批量删除选中的机构信息
	 * 
	 * @param institutionNos
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteByInstitutionNo", method = RequestMethod.DELETE)
	public Result deleteByInstitutionNo(@RequestBody(required = true) String institutionNos) {
		// 将前端传过来的字符串转成json数组
		JSONArray institutionNosArray = JSON.parseArray(institutionNos);

		institutionInfoService.deleteByInstitutionNo(institutionNosArray);
		return new Result(true, "删除成功！");

	}
	
}
