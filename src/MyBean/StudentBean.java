/**
 * @className StudentBean.java
 * 
 * Copyright (c) 2015-2020 PSRL.
 * Room 421,Information Building, Lanzhou University,
 * 222 South Tianshui Road, Lanzhou, Gansu province, 730000, China.
 * 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package MyBean;

/**
 * class description 
 * 
 * @version 0.1 
 *  
 * @date 2015Äê11ÔÂ5ÈÕ
 * 
 * @author Zhang San
 */
public class StudentBean {
	
	private String name;
	private int age;
	private String hobby;
	
	
	/**
	 * 
	 */
	public StudentBean() {
		super();
		this.name = "Zhang";
		this.age= 20;
		this.hobby="basketball";
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}
	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the hobby
	 */
	public String getHobby() {
		return hobby;
	}
	/**
	 * @param hobby the hobby to set
	 */
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	

}
