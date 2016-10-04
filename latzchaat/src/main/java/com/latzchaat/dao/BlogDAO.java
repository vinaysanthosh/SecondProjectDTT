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
public class BlogDAO implements BlogInterface {

	SessionFactory sessionFactory;

	@Autowired
	public BlogDAO(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void insertBlog(Blogs blog) {
		Session session = sessionFactory.getCurrentSession();
		session.save(blog);
	}

	public Blogs getOneBlogs(int blogid) {
		Session session = sessionFactory.getCurrentSession();
		return (Blogs) session.get(Blogs.class, new Integer(blogid));
	}

	public List<Blogs> getAllBlogs() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Blogs");
		List<Blogs> blogs = q.list();
		return blogs;
	}

	public void deleteBlog(int blogid) {
		Session session = sessionFactory.getCurrentSession();
		Blogs blog=(Blogs)session.load(Blogs.class, new Integer(blogid));
		session.delete(blog);				
	}

	public void updateBlog(Blogs blog) {
		Session session=sessionFactory.getCurrentSession();
		session.update(blog);
		
	}
	public List<Jobs> getAllJobs() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Jobs");
		List<Jobs> jobs = q.list();
		return jobs;
	}
	
}
