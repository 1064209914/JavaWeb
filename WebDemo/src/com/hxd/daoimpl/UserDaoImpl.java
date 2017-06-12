package com.hxd.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.websocket.Session;

import com.hxd.bean.User;
import com.hxd.dao.UserDao;
import com.hxd.util.JDBConnection;

public class UserDaoImpl implements UserDao {
	ResultSet rs = null;
	PreparedStatement ps = null;
	User user = null;
	

	@Override
	public User getUserByName(String name) {
		Connection conn = JDBConnection.getConnection();
		String sql = "select * from users where name=?;";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setAge(rs.getString(3));
				user.setPhone(rs.getString(4));
			}
				rs.close();
				ps.close();
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;

	}

	@Override
	public void addUser(User user) {
		Connection conn = JDBConnection.getConnection();
		String sql = "insert users(name,age,phone) values(?,?,?);";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getName());
			ps.setString(2,user.getAge());
			ps.setString(3,user.getPhone());
			ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateUser(User user) {
		Connection conn = JDBConnection.getConnection();
		String sql = "update users set age=?, phone=? where name=?;";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(3, user.getName());
			ps.setString(1, user.getAge());
			ps.setString(2, user.getPhone());
			ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteUser(User user) {
		Connection conn = JDBConnection.getConnection();
		String sql = "delete from users where name=? ;";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
