package com.pinetreelch.infra.common.util;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import com.pinetreelch.infra.common.constants.Constants;

public class UtilDateTime {
	
	public static String add00TimeString(String shDateStart) {
		
		return shDateStart;
	}

	public static String add59TimeString(String shDateEnd) {
		
		return shDateEnd;
	}
	
	public static Date nowDate () throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.DATETIME_FORMAT_BASIC);
        Date date = simpleDateFormat.parse(localDateTimeString);
        System.out.println(date);
		return date;
	}
}
