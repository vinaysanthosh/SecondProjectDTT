package com.latzchaat.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
@Table(name = "Blogs")
@Entity
public class Blogs implements Serializable {
	@Column(name = "blogid")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int blogid;
	@Column(name = "title")
	@NotEmpty(message = "Please fill title")
	private String title;
	@Column(name = "description")
	@NotEmpty(message = "Please fill description")
	private String description;
	@Column(name = "detail")
	@NotEmpty(message = "Please fill detail")
	private String detail;
	@Column(name = "owner")
	@NotEmpty(message = "Please fill owner")
	private String owner;
	@Column(name = "status")
	@NotEmpty(message = "Please fill status")
	private String status;

	public int getBlogid() {
		return blogid;
	}

	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
