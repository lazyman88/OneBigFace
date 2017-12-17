package com.lz.singleton;

public class Singleton {
	private Singleton(){};
	private static volatile Singleton singleton = null;
	public static Singleton  getSingleton() {
		if  (singleton == null) {
			synchronized (singleton) {
				
				if(singleton == null) {
					return new  Singleton();
				}
			}
		}
		return singleton;
	}
}
