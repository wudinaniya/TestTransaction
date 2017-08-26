package com.qx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qx.mapper.UserMapper;
import com.qx.pojo.User;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		List<User> users = null;
		try {
			users = userMapper.findAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	@Override
	public void AddUser(User user)  {
		// TODO Auto-generated method stub
		try {
			userMapper.AddUser(user);
			//int a=6/0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("事务回滚了吗");
		}
	}

	
	@Override
	public void updateUserById(Integer id,String username, int age, String sex) {
		// TODO Auto-generated method stub
		try {
			userMapper.updateUserById(id,username, age, sex);
			int b=10/0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("事务回滚了吗");
		}
	}

}
