package com.latzchaat.model;


import javax.persistence.*;



@Table(name = "Jobs")
@Entity
public class Jobs {

	@Column(name="jobid")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int jobid;
	
	@Column(name="profile")
	private String profile;	

	@Column(name="company")
	private String company;	

	@Column(name="description")
	private String description;

	@Column(name="salary")
	private String salary;

	@Column(name="date")
	private String date;

	@Column(name="address")
	private String address;

	@Column(name="eligibility")
	private String eligibility;

	public int getJobid() {
		return jobid;
	}

	public void setJobid(int jobid) {
		this.jobid = jobid;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEligibility() {
		return eligibility;
	}

	public void setEligibility(String eligibility) {
		this.eligibility = eligibility;
	}
	
	
}
