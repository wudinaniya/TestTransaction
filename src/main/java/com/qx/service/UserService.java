package com.qx.service;

import java.util.List;

import com.qx.pojo.User;

public interface UserService {

	public List<User> findAll() throws Exception;
	
	public void AddUser(User user) throws Exception;
	
	public void updateUserById(Integer id,String username,int age,String sex) throws Exception;
	
}
