package com.complexdata.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 随机生成流水号
 * 
 * @author loryp
 *
 */
public class TermSequenceUtil {
	
	/**
	 * 随机生成20位流水号
	 * 
	 * @return
	 */
	public static String createTermSeq() {
		// 获取系统时间
		String termSeq = Long.toString(System.currentTimeMillis());
		// 获取系统时间后10位
		termSeq = termSeq.substring(termSeq.length() - 10);
		String str = "";
		int a[] = new int[10];
		for (int i = 0; i < a.length; i++) {
			// 随机获取一个10以内整数
			Integer b = (int) (Math.random() * 10);
			str += b + "";
		}
		// 生成20位渠道流水号
		String newTermSeq = termSeq + str;
		return newTermSeq;
	}

	public static void main(String[] args) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd HHmmss");
		String time = format.format(new Date());
		System.out.println(time.split(" ")[0]);
		System.out.println(time.split(" ")[1]);
		System.out.println(createTermSeq());
	}
}
