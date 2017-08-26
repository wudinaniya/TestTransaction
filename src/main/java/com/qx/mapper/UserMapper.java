package com.qx.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qx.pojo.User;

public interface UserMapper {

	public List<User> findAll() throws Exception;
	
	public void AddUser(User user) throws Exception;
	
	//更改用户
	public void updateUserById(@Param("id") Integer id,@Param("username") String name,
			@Param("age") Integer age,@Param("sex") String sex) throws Exception;
	
}
