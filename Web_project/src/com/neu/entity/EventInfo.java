package com.neu.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class EventInfo implements Serializable{
	private int id;
	private int user_id;
	private String s0to4;
	private String s4to8;
	private String s8to12;
	private String s12to16;
	private String s16to20;
	private String s20to24;
	private Date timestam;
	private int day;
	private String daystr;
	private Date dates;
	private String datestr;
	
	private String d1;
	private String d2;
	private String d3;
	private String d4;
	private String d5;
	private String d6;
	private String d7;
	
	public String getD1() {
		return d1;
	}
	public void setD1(String d1) {
		this.d1 = d1;
	}
	public String getD2() {
		return d2;
	}
	public void setD2(String d2) {
		this.d2 = d2;
	}
	public String getD3() {
		return d3;
	}
	public void setD3(String d3) {
		this.d3 = d3;
	}
	public String getD4() {
		return d4;
	}
	public void setD4(String d4) {
		this.d4 = d4;
	}
	public String getD5() {
		return d5;
	}
	public void setD5(String d5) {
		this.d5 = d5;
	}
	public String getD6() {
		return d6;
	}
	public void setD6(String d6) {
		this.d6 = d6;
	}
	public String getD7() {
		return d7;
	}
	public void setD7(String d7) {
		this.d7 = d7;
	}
	public String getDatestr() {
		return datestr;
	}
	public void setDatestr(String datestr) {
		this.datestr = datestr;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getDates() {
		return dates;
	}
	public void setDates(Date dates) {
		this.dates = dates;
	}
	public String getS0to4() {
		return s0to4;
	}
	public void setS0to4(String s0to4) {
		this.s0to4 = s0to4;
	}
	public String getS4to8() {
		return s4to8;
	}
	public void setS4to8(String s4to8) {
		this.s4to8 = s4to8;
	}
	public String getS8to12() {
		return s8to12;
	}
	public void setS8to12(String s8to12) {
		this.s8to12 = s8to12;
	}
	public String getS12to16() {
		return s12to16;
	}
	public void setS12to16(String s12to16) {
		this.s12to16 = s12to16;
	}
	public String getS16to20() {
		return s16to20;
	}
	public void setS16to20(String s16to20) {
		this.s16to20 = s16to20;
	}
	public String getS20to24() {
		return s20to24;
	}
	public void setS20to24(String s20to24) {
		this.s20to24 = s20to24;
	}
	public Date getTimestam() {
		return timestam;
	}
	public void setTimestam(Date timestam) {
		this.timestam = timestam;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public String getDaystr() {
		return daystr;
	}
	public void setDaystr(String daystr) {
		this.daystr = daystr;
	}
	
}
