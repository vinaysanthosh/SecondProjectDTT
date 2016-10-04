package com.latzchaat.dao;

import java.util.List;

import com.latzchaat.model.Blogs;

public interface BlogInterface {

	public void insertBlog(Blogs blogs);
	public Blogs getOneBlogs(int blogid);
	public List<Blogs> getAllBlogs();
	public void deleteBlog(int blogid);
	public void updateBlog(Blogs blog);
	
}
