package com.shawn.bean;

import org.apache.struts2.util.SubsetIteratorFilter;

public class MyDecider implements SubsetIteratorFilter.Decider {

	@Override
	public boolean decide(Object element) throws Exception {
		String str = (String) element;
		return str.indexOf("J2EE") > 0;
	}
}
