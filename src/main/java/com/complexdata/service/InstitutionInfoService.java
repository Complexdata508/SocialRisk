package com.complexdata.service;

import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.complexdata.model.InstitutionInfo;
import com.github.pagehelper.PageInfo;

public interface InstitutionInfoService {

	/**
	 * 分页查询所有机构信息
	 * @return
	 */
	public PageInfo<InstitutionInfo> getPageInstitutionInfo(int pageNum,int size);

	/**
	 * 添加机构信息
	 * @param institutionInfo
	 * @return
	 */
	public int addInstitutionInfo(InstitutionInfo institutionInfo);

	/**
	 * 根据机构号查询机构信息
	 * @param institutionNo
	 * @return
	 */
	public InstitutionInfo getByInstitutionNo(String institutionNo);

	/**
	 * 根据机构号修改机构信息
	 * @param institutionInfo
	 * @return
	 */
	public int updateByInstitutionNo(InstitutionInfo institutionInfo);

	/**
	 * 根据机构号批量删除机构信息
	 * @param institutionNosArray
	 * @return
	 */
	public int deleteByInstitutionNo(JSONArray institutionNosArray);
	
	/**
	 * 根据机构号批量查询
	 * */
	public PageInfo<InstitutionInfo> getPageByInstitutionNo(String institutionNo, int pageNum, int size);

	public List<InstitutionInfo> getZCInstitutionInfos();

	public List<InstitutionInfo> getZJInstitutionInfos();
}
