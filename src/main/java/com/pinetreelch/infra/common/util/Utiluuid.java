package com.pinetreelch.infra.common.util;

import java.util.UUID;


public class Utiluuid {
	
	public static String  uuidmake() {
		String uuid = "ORDER" + UUID.randomUUID().toString();
		return uuid;
	}	
}
