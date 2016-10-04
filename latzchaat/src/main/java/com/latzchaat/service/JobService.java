package com.latzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.dao.JobDAO;
import com.latzchaat.model.Blogs;
import com.latzchaat.model.Jobs;
@Service
@Transactional
@EnableTransactionManagement
public class JobService {
	private JobDAO jobDAO; 
	@Autowired
	public JobService(JobDAO jobDAO) {
	
		this.jobDAO = jobDAO;
	}

	public void setJobDAO(JobDAO jobDAO) {
		this.jobDAO = jobDAO;
	} 

	public void insertJob(Jobs job) {
jobDAO.insertJob(job);
		
	}

	public Jobs getOneJob(int jobid) {
		// TODO Auto-generated method stub
		return jobDAO.getOneJob(jobid);
	}

	public List<Jobs> getAllJobs() {
		// TODO Auto-generated method stub
		return jobDAO.getAllJobs();
	}
	

	public void deleteJob(int jobid) {
		// TODO Auto-generated method stub
		jobDAO.deleteJob(jobid);                              
	}

	public void updateJob(Jobs job) {
		// TODO Auto-generated method stub
		jobDAO.updateJob(job);
	}
	public List<Blogs> getAllBlogs()
	{
		return jobDAO.getAllBlogs();
	}
}
