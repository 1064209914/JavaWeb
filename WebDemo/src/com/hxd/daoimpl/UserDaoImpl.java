package com.hxd.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.websocket.Session;

import com.hxd.bean.User;
import com.hxd.dao.UserDao;
import com.hxd.util.JDBConnection;

public class UserDaoImpl implements UserDao {
			ResultSet rs=null;
		PreparedStatement  ps=null;
		String sql="select * from users where name=?";
	       User user=null;
	@Override
	public User getUserByName(String name) {
		Connection conn=JDBConnection.getConnection();
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1,name);
			rs=ps.executeQuery();
			if (rs.next()) {
				user=new User();
			user.setName(rs.getString(1));
				user.setPassword(rs.getString(2));
			
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
		
	}

}
