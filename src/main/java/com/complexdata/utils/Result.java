package com.complexdata.utils;

import java.io.Serializable;

public class Result implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = -2138343962940313374L;

	//状态
    private boolean success;

    //消息
    private String message;

    public Result(boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public Result() {
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
