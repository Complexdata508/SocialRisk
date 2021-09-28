package com.complexdata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.complexdata.model.InstitutionInfo;
import com.github.abel533.mapper.Mapper;



public interface InstitutionInfoMapper extends Mapper<InstitutionInfo>{
	
	/**
	 * 根据机构号删除机构信息
	 * @param institutionNosArray
	 */
	public int deleteByInstitutionNos(InstitutionInfo institutionInfo);

	public int addInstitutionInfo(InstitutionInfo institutionInfo);

	public List<InstitutionInfo> searchByInstitutionNo(@Param("institutionNo") String institutionNo);
	
	public InstitutionInfo findByInsitution(@Param("institutionNo") String institutionNo);
}
