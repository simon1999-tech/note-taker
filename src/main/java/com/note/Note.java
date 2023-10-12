package com.note;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Note {
	@Id
	private int id;
	private String name;
	@Column(length=2000)
	private String content;
	private Date adddate;
	
	public Note() {
		super();
	}

	public Note(String name, String content, Date adddate) {
		super();
		this.id = new Random().nextInt(1000);
		this.name = name;
		this.content = content;
		this.adddate = adddate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAdddate() {
		return adddate;
	}

	public void setAdddate(Date adddate) {
		this.adddate = adddate;
	}
	
}
