package com.complexdata.model;

import java.io.Serializable;

import javax.persistence.Id;
import javax.persistence.Transient;

import org.apache.ibatis.type.Alias;

/**
 * 机构信息
 * @author loryp
 *
 */
@Alias("InstitutionInfo")
public class InstitutionInfo implements Serializable{

	private static final long serialVersionUID = -8736778803343674686L;

	@Id
	/** 流水号 */
	private String logno;
	/**机构编号*/
	private String institutionNo;
	/**机构名称*/
	private String institutionName;
	/**机构类型*/
	private String institutionType;
	/**机构状态*/
	private String institutionState;
	/**商户号*/
	private String instId;
	/**内部账号*/
	private String instAcct;
	/**内部户名*/
	private String instAcctname;
	/**渠道标志*/                    
	private String channelFlag;      
	/**参数设置ID*/                  
	private String paramSetId;       
	/**路由参数*/                    
	private String routeParam;       
	/**参数名称*/                    
	private String paramName;        
	/**FTP地址*/                     
	private String ftpAddress;
	/**FTP端口*/
	private Integer ftpPort;
	/**FTP路径*/                     
	private String ftpPath;          
	/**FTP用户*/                     
	private String ftpUser;          
	/**FTP密码*/                     
	private String ftpPassword;
	/**字符集编码*/
	private String encoding;
	/**传输协议*/
	private String transProtocol;
	/**回调地址*/                    
	private String callbackAddress;  
	/**额度指派层级*/
	private String designateLevel;
	/**额度分配方式*/
	private String distribPattern;
	/**预留字段1*/                   
	private String reserve1;         
	/**预留字段2*/                   
	private String reserve2;
	
	/**机构类型描述*/
	@Transient
	private String institutionTypeDesc = "";
	@Transient
	/**机构状态描述*/
	private String institutionStateDesc = "";
	@Transient
	/**额度指派层级*/
	private String designateLevelDesc = "";
	@Transient
	/**额度分配方式*/
	private String distribPatternDesc = "";
	
	/** 获取：流水号 */
	public String getLogno() {
		return logno;
	}
	
	/** 设置：流水号 */
	public void setLogno(String logno) {
		this.logno = logno;
	}
	
	/** 获取：机构编号 */
	public String getInstitutionNo() {
		return institutionNo;
	}
	
	/** 设置：机构编号 */
	public void setInstitutionNo(String institutionNo) {
		this.institutionNo = institutionNo;
	}
	
	/** 获取：机构名称 */
	public String getInstitutionName() {
		return institutionName;
	}
	
	/** 设置：机构名称 */
	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}
	
	/** 获取：机构类型 */
	public String getInstitutionType() {
		return institutionType;
	}
	
	/** 设置：机构类型 */
	public void setInstitutionType(String institutionType) {
		this.institutionType = institutionType;
	}
	
	/** 获取：机构状态 */
	public String getInstitutionState() {
		return institutionState;
	}
	
	/** 设置：机构状态 */
	public void setInstitutionState(String institutionState) {
		this.institutionState = institutionState;
	}
	
	public String getInstId() {
		return instId;
	}

	public void setInstId(String instId) {
		this.instId = instId;
	}

	public String getInstAcct() {
		return instAcct;
	}

	public void setInstAcct(String instAcct) {
		this.instAcct = instAcct;
	}

	public String getInstAcctname() {
		return instAcctname;
	}

	public void setInstAcctname(String instAcctname) {
		this.instAcctname = instAcctname;
	}

	/** 获取：渠道标志 */
	public String getChannelFlag() {
		return channelFlag;
	}
	
	/** 设置：渠道标志 */
	public void setChannelFlag(String channelFlag) {
		this.channelFlag = channelFlag;
	}
	
	/** 获取：参数设置ID */
	public String getParamSetId() {
		return paramSetId;
	}
	
	/** 设置：参数设置ID */
	public void setParamSetId(String paramSetId) {
		this.paramSetId = paramSetId;
	}
	
	/** 获取：路由参数 */
	public String getRouteParam() {
		return routeParam;
	}
	
	/** 设置：路由参数 */
	public void setRouteParam(String routeParam) {
		this.routeParam = routeParam;
	}
	
	/** 获取：参数名称 */
	public String getParamName() {
		return paramName;
	}
	
	/** 设置：参数名称 */
	public void setParamName(String paramName) {
		this.paramName = paramName;
	}
	
	/** 获取：FTP地址 */
	public String getFtpAddress() {
		return ftpAddress;
	}
	
	/** 设置：FTP地址 */
	public void setFtpAddress(String ftpAddress) {
		this.ftpAddress = ftpAddress;
	}
	
	/** 获取：FTP路径 */
	public String getFtpPath() {
		return ftpPath;
	}
	
	/** 设置：FTP路径 */
	public void setFtpPath(String ftpPath) {
		this.ftpPath = ftpPath;
	}
	
	
	/** 获取：FTP端口 */
	public Integer getFtpPort() {
		return ftpPort;
	}
	/** 设置：FTP端口 */
	public void setFtpPort(Integer ftpPort) {
		this.ftpPort = ftpPort;
	}

	/** 获取：FTP用户 */
	public String getFtpUser() {
		return ftpUser;
	}
	
	/** 设置：FTP用户 */
	public void setFtpUser(String ftpUser) {
		this.ftpUser = ftpUser;
	}
	
	/** 获取：FTP密码 */
	public String getFtpPassword() {
		return ftpPassword;
	}
	
	/** 设置：FTP密码 */
	public void setFtpPassword(String ftpPassword) {
		this.ftpPassword = ftpPassword;
	}
	
	/** 获取：字符集编码*/
	public String getEncoding() {
		return encoding;
	}

	/** 设置：字符集编码 */
	public void setEncoding(String encoding) {
		this.encoding = encoding;
	}

	/** 获取：传输协议*/
	public String getTransProtocol() {
		return transProtocol;
	}

	/** 设置：传输协议*/
	public void setTransProtocol(String transProtocol) {
		this.transProtocol = transProtocol;
	}
	
	/** 获取：回调地址 */
	public String getCallbackAddress() {
		return callbackAddress;
	}
	
	/** 设置：回调地址 */
	public void setCallbackAddress(String callbackAddress) {
		this.callbackAddress = callbackAddress;
	}
	
	/** 获取：预留字段1 */
	public String getReserve1() {
		return reserve1;
	}
	
	/** 设置：预留字段1 */
	public void setReserve1(String reserve1) {
		this.reserve1 = reserve1;
	}
	
	/** 获取：预留字段2 */
	public String getReserve2() {
		return reserve2;
	}
	
	/** 设置：预留字段2 */
	public void setReserve2(String reserve2) {
		this.reserve2 = reserve2;
	}

	public String getDesignateLevel() {
		return designateLevel;
	}

	public void setDesignateLevel(String designateLevel) {
		this.designateLevel = designateLevel;
	}

	public String getDistribPattern() {
		return distribPattern;
	}

	public void setDistribPattern(String distribPattern) {
		this.distribPattern = distribPattern;
	}

	/**得到机构类型描述*/
	public String getInstitutionTypeDesc() {
		if ("1".equals(institutionType)) {
			institutionTypeDesc="资产端";
		}else if ("2".equals(institutionType)) {
			institutionTypeDesc="资金端";
		}
		return institutionTypeDesc;
	}
	
	/**得到机构状态描述*/
	public String getInstitutionStateDesc() {
		if ("1".equals(institutionState)) {
			institutionStateDesc="启用";
		}else if ("2".equals(institutionState)) {
			institutionStateDesc="未启用";
		}
		return institutionStateDesc;
	}

	/**得到额度分配层级*/
	public String getDesignateLevelDesc() {
		if ("1".equals(designateLevel)) {
			designateLevelDesc="机构层";
		}else if ("2".equals(designateLevel)) {
			designateLevelDesc="产品层";
		}
		return designateLevelDesc;
	}
	/**得到额度分配方式*/
	public String getDistribPatternDesc() {
		if ("1".equals(distribPattern)) {
			distribPatternDesc="固定比例分配";
		}else if ("2".equals(distribPattern)) {
			distribPatternDesc="按产品最高可贷金额生成比例";
		}else if ("3".equals(distribPattern)) {
			distribPatternDesc="先到先得";
		}
		return distribPatternDesc;
	}
	

}
