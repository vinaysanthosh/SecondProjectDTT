package com.latzchaat.dao;

import java.util.List;

import com.latzchaat.model.*;

public interface JobDAOInterface {
	public void insertJob(Jobs job);
	public Jobs getOneJob(int jobid);
	public List<Jobs> getAllJobs();
	public void deleteJob(int jobid);
	public void updateJob(Jobs job);
}
