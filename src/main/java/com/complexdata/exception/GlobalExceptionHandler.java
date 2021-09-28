package com.complexdata.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.complexdata.utils.Result;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(RuntimeException.class)
	@ResponseBody
	public Result doHandleRuntimeException(Exception e){
		e.printStackTrace();
		Result result = new Result();
		result.setSuccess(false);
		if (e instanceof ServiceException) {
			result.setMessage(e.getMessage());
			return result;
		}
		result.setMessage("操作失败，请检查！");
		return result;
	}
}
