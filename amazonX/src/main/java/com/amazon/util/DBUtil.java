package com.amazon.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;

/**
 * 数据库连接池工具类
 * @author DELL
    *    全世界最笨的东西
 */
public class DBUtil {
	//初始化连接池   
	private static BasicDataSource db;//并没有初始化连接池
	//给连接池设置参数(从配置文件中获取)---写配置
	//初始化Properties类，用于读取配置文件里面的信息
	//静态代码块  类加载的时候开始执行
	static {
		Properties  p  =  new Properties();
		//利用反射加载文件  所有的框架都是利用反射写的   IO
		try {
			p.load(DBUtil.class.getClassLoader().getResourceAsStream("db.properties"));
			//  key  =  value
			String driver = p.getProperty("driver");
			String url = p.getProperty("url");
			String username = p.getProperty("username");
			String password = p.getProperty("password");
			String init_size = p.getProperty("init_size");
			String max_size = p.getProperty("max_size");
			db = new BasicDataSource();
			db.setDriverClassName(driver);
			db.setUrl(url);
			db.setUsername(username);
			db.setPassword(password);
			//static int parseInt(String s) 把字符串s转换成int类型，然后返回，如果不能转换，报错NumberFormatException
			db.setInitialSize(Integer.parseInt(init_size));
			db.setMaxActive(Integer.parseInt(max_size));
			//数据库连接池初始化完毕
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	//从连接池中获取连接   java.sql.Connection;
	/*
	 * 如果获取连接失败，那么获取到的连接是null
	 */
	public static Connection getConnection() {
		try {
			Connection con = db.getConnection();
			return con;
		} catch (SQLException e) {
			e.printStackTrace();//在控制台打印异常的堆栈信息
		}
		return null;
	}
	//归还连接  参数con表示要归还的连接是谁
	public static void close(Connection con) {
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		Connection con = getConnection();
		System.out.println(con);
	}
}
