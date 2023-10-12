package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Factory {
	public static SessionFactory fact;
	
	public static SessionFactory getFactory() {
		if(fact==null) {
			Configuration cfg = new Configuration();
			cfg.configure();
			fact = cfg.buildSessionFactory();
		}
		return fact;
	}
	
	public static void closeFactory() {
		if(fact.isOpen()) {
			fact.close();
		}
	}
}
