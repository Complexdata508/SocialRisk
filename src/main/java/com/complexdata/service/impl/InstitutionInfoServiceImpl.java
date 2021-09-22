package com.complexdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.alibaba.fastjson.JSONArray;
import com.complexdata.exception.ServiceException;
import com.complexdata.mapper.InstitutionInfoMapper;
import com.complexdata.model.InstitutionInfo;
import com.complexdata.service.InstitutionInfoService;
import com.complexdata.utils.TermSequenceUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class InstitutionInfoServiceImpl implements InstitutionInfoService {
	
	@Autowired
	private InstitutionInfoMapper institutionInfoMapper;
	
	/**
	 * 鍒嗛〉鏌ヨ鏈烘瀯鎵?鏈変俊鎭?
	 */
	@Override
	public PageInfo<InstitutionInfo> getPageInstitutionInfo(int pageNum, int size) {
		PageHelper.startPage(pageNum, size);
		List<InstitutionInfo> institutionInfo = institutionInfoMapper.select(null);
		
		PageInfo<InstitutionInfo> pageInfo = new PageInfo<InstitutionInfo>(institutionInfo);
		return pageInfo;
	}

	/**
	 * 娣诲姞鏈烘瀯淇℃伅
	 */
	@Override

	public int addInstitutionInfo(InstitutionInfo institutionInfo){
		if (institutionInfo==null) {
			throw new ServiceException("淇濆瓨瀵硅薄涓嶈兘涓虹┖锛?");
		}
		if (StringUtils.isEmpty(institutionInfo.getInstitutionNo())) {
			throw new ServiceException("鏈烘瀯缂栧彿涓嶈兘涓虹┖锛?");
		}
		institutionInfo.setLogno(TermSequenceUtil.createTermSeq());
		return institutionInfoMapper.addInstitutionInfo(institutionInfo);
	}

	/**
	 * 鏍规嵁鏈烘瀯鍙锋煡璇㈡満鏋勪俊鎭?
	 */
	@Override
	public InstitutionInfo getByInstitutionNo(String institutionNo) {
		InstitutionInfo institutionInfo = new InstitutionInfo();
		institutionInfo.setInstitutionNo(institutionNo);
		return institutionInfoMapper.selectOne(institutionInfo);
	}

	/**
	 * 鏍规嵁鏈烘瀯鍙蜂慨鏀规満鏋勪俊鎭?
	 */
	@Override
	public int updateByInstitutionNo(InstitutionInfo institutionInfo){
		if (institutionInfo==null) {
			throw new ServiceException("鏇存柊瀵硅薄涓嶈兘涓虹┖锛?");
		}
		if (StringUtils.isEmpty(institutionInfo.getInstitutionNo())) {
			throw new ServiceException("鏈烘瀯缂栧彿涓嶈兘涓虹┖锛?");
		}
		return institutionInfoMapper.updateByPrimaryKey(institutionInfo);
	}

	/**
	 * 鏍规嵁鏈烘瀯鍙锋壒閲忓垹闄ゆ満鏋勪俊鎭?
	 */
	@Override
	public int deleteByInstitutionNo(JSONArray institutionNosArray){

		if ( institutionNosArray == null ||  institutionNosArray.size()<=0 ) {
			throw new ServiceException("鏈烘瀯缂栧彿鍙傛暟閿欒锛?");
		}
		
		int j = 0;
		for(int i= 0;i<institutionNosArray.size();i++){
			InstitutionInfo info = new InstitutionInfo();
			info.setInstitutionNo(institutionNosArray.get(i).toString());
			j = institutionInfoMapper.deleteByInstitutionNos(info);
		}
		return j;
	}

	@Override
	public PageInfo<InstitutionInfo> getPageByInstitutionNo(String institutionNo, int pageNum, int size) {
		PageHelper.startPage(pageNum, size);
		List<InstitutionInfo> infos = institutionInfoMapper.searchByInstitutionNo(institutionNo);
		PageInfo<InstitutionInfo> pageInfo = new PageInfo<>(infos);
		return pageInfo;
	}

	@Override
	public List<InstitutionInfo> getZCInstitutionInfos() {
		InstitutionInfo info = new InstitutionInfo();
		info.setInstitutionType("1");
		return institutionInfoMapper.select(info);
	}

	@Override
	public List<InstitutionInfo> getZJInstitutionInfos() {
		InstitutionInfo info = new InstitutionInfo();
		info.setInstitutionType("2");
		return institutionInfoMapper.select(info);
	}

}
