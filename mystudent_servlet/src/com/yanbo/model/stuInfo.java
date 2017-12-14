package com.yanbo.model;

public class stuInfo {
	/*	id int(11) AI PK 
		nickname char(20) 
		truename char(20) 
		sex bit(1) 
		birthday varchar(14) 
		specialty varchar(20) 
		course varchar(100) 
		interst varchar(20) 
		remark varchar(500)	*/
	private int id;
	private String nickname;
	private String truename;
	private byte sex;
	private String birthday ;
	private String specialty;
	private String[] course = { "" };
	private String courses = "";
	private String[] interst = { "" };
	private String intersts = "";
	private String remark;
	
	public stuInfo(){
		
	}
	
	public stuInfo(String nc,String xm,byte xb,String csrq,String zy,String kc,String xq,String bz){
		nickname = nc;
		truename = xm;
		sex = xb;
		birthday = csrq;
		specialty = zy;
		courses = kc;
		intersts = xq;
		remark = bz;
	}
	
	public stuInfo(int ID,String nc,String xm,byte xb,String csrq,String zy,String kc,String xq,String bz){
		id = ID;
		nickname = nc;
		truename = xm;
		sex = xb;
		birthday = csrq;
		specialty = zy;
		courses = kc;
		intersts = xq;
		remark = bz;
	}
	
	public stuInfo(String nc,String xm,byte xb,String csrq,String zy,String[] kc,String[] xq,String bz){
		nickname = nc;
		truename = xm;
		sex = xb;
		birthday = csrq;
		specialty = zy;
		course = kc;
		interst = xq;
		remark = bz;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public byte getSex() {
		return sex;
	}
	public void setSex(byte sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String[] getCourse() {
		return course;
	}
	public void setCourse(String[] course) {
		this.course = course;
	}
	public String getCourses() {
		if (course != null) {
			for (int i=0; i<course.length; i++)
				courses = courses + course[i] + "&";
		}
		courses = courses.substring(0, (courses.length()-1));
		return courses;
	}
	public void setCourses(String courses) {
		this.courses = courses;
	}
	public String[] getInterst() {
		return interst;
	}
	public void setInterst(String[] interst) {
		this.interst = interst;
	}
	public String getIntersts() {
		if (interst != null) {
			for (int i=0; i<interst.length; i++)
				intersts = intersts + interst[i] + "&";
		}
		intersts = intersts.substring(0, (intersts.length()-1));
		return intersts;
	}
	public void setIntersts(String intersts) {
		this.intersts = intersts;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public void display() {
		//nickname,truename,sex,birthday,specialty,course,interst,remark
		System.out.println("-------------------------");
		System.out.println("nickname:" + nickname);
		System.out.println("truename:" + truename);
		System.out.println("sex:" + sex);
		System.out.println("birthday:" + birthday);
		System.out.println("specialty:" + specialty);
		System.out.println("course:" + getCourses());
		System.out.println("interst:" + getIntersts());
		System.out.println("remark:" + remark);
		System.out.println("-------------------------");
	}
}
