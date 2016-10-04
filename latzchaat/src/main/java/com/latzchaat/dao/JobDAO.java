package com.latzchaat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.latzchaat.model.Blogs;
import com.latzchaat.model.Jobs;

@Repository
public class JobDAO implements JobDAOInterface {
	SessionFactory sessionFactory;

	@Autowired
	public JobDAO(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void insertJob(Jobs job) {
		Session session = sessionFactory.getCurrentSession();
		session.save(job);
	}

	public Jobs getOneJob(int jobid) {
		Session session = sessionFactory.getCurrentSession();
		return (Jobs) session.get(Jobs.class, new Integer(jobid));

	}

	public List<Jobs> getAllJobs() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Jobs");
		List<Jobs> jobs = q.list();
		return jobs;
	}

	public void deleteJob(int jobid) {
		Session session = sessionFactory.getCurrentSession();
		Jobs job = (Jobs) session.load(Jobs.class, new Integer(jobid));
		session.delete(job);
	}

	public void updateJob(Jobs job) {
		Session session = sessionFactory.getCurrentSession();
		session.update(job);
	}
	public List<Blogs> getAllBlogs() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Blogs");
		List<Blogs> blogs = q.list();
		return blogs;
	}
}
