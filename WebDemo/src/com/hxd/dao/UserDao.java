package com.hxd.dao;

import com.hxd.bean.User;

public interface UserDao {
		public void addUser(User user);		// 增加
		public void  updateUser( User user);
		public void deleteUser( User user);
		public  User getUserByName(String name );
		
}
