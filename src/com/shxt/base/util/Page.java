package com.shxt.base.util;

/**
 * 分页对象
 */
public class Page {
	/**当前页数*/
	private int index;
	/**每页的行数*/
	private int size;
	/**总记录数*/
	private int count;
	/**总页数*/
	private int all;
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getAll() {
		return all;
	}
	public void setAll(int all) {
		this.all = all;
	}
	
	
}
