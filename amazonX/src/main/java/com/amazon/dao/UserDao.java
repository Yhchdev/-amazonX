package com.amazon.dao;

import com.amazon.entity.User;
import com.amazon.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class UserDao {
	//写一个方法用于查询用户名和密码是否正确
	public User findByNP(String userName,String password) {
		//1、获取数据库连接信息
		Connection con = DBUtil.getConnection();
		//2、编写sql语句
		String sql = "select * from hwua_user where hu_user_name = ? and hu_password=?";
		//3、使用预编译语句编译sql语句
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			//4、给sql语句传值
			ps.setString(1, userName);
			ps.setString(2, password);
			//5、执行sql语句，并获得结果集
			ResultSet rs = ps.executeQuery();
			//rs.next()  查看结果集是否有下一条数据     如果有下一条记录，那么把指针移到下一条记录上
			//如果我只知道数据库表的名称，我不清楚数据库表的结构，是否可以使用jdbc完成正常的查询
			//yes    元数据
			/*ResultSetMetaData rsm = rs.getMetaData();
			//获取一共有多少列
			int colCount = rsm.getColumnCount();
			//遍历元数据是从1开始，表示第1列开始
			for(int i = 1;i<=colCount;i++) {
				String name = rsm.getColumnName(i);//获取数据库表的第i行的列名
				String type = rsm.getColumnTypeName(i);//获取数据库表的第i行的列的数据类型
				System.out.println("列名:"+name+"  数据类型:"+type);
			}*/
			while(rs.next()) {
				//把数据内容封装到user对象中
				User u = new User();
				u.setHu_address(rs.getString("hu_address"));
				u.setHu_birthday(rs.getString("hu_birthday"));
				u.setHu_email(rs.getString("hu_email"));
				u.setHu_identity_code(rs.getString("hu_identity_code"));
				u.setHu_mobile(rs.getString("hu_mobile"));
				u.setHu_password(rs.getString("hu_password"));
				u.setHu_sex(rs.getString("hu_sex"));
				u.setHu_status(rs.getInt("hu_status"));
				u.setHu_user_id(rs.getLong("hu_user_id"));
				u.setHu_user_name(rs.getString("hu_user_name"));
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con);
		}
		return null;
	}


	//insert user
	public int addUser(User user){
		int num = 0;
		Connection con = DBUtil.getConnection();
		String sql = "insert into hwua_user" +
				"(hu_user_name,hu_password,hu_sex,hu_birthday,hu_identity_code,hu_email,hu_mobile,hu_address,hu_status) " +
				"values(?,?,?,?,?,?,?,?,'0')";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,user.getHu_user_name());
			ps.setString(2,user.getHu_password());
			ps.setString(3,user.getHu_sex());
			ps.setString(4,user.getHu_birthday());
			ps.setString(5,user.getHu_identity_code());
			ps.setString(6,user.getHu_email());
			ps.setString(7,user.getHu_mobile());
			ps.setString(8,user.getHu_address());

			System.out.println(ps);

			num = ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally {
			DBUtil.close(con);
		}
		return num;
	}
	public static void main(String[] args) {
		UserDao dao = new UserDao();
		System.out.println(dao.findByNP("yhch", "yhchdev"));
	}
}
