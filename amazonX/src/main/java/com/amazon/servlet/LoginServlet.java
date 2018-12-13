package com.amazon.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.amazon.dao.UserDao;
import com.amazon.entity.User;

public class LoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("application/json;charset=utf-8");
		String userName = req.getParameter("userName");
		String password = req.getParameter("passWord");
		//查数据库
		//先实例化dao
		UserDao dao = new UserDao();
		User u = dao.findByNP(userName, password);
		//System.out.println(userName+" "+ password);
		String message = null;
		if(u!=null) {
			message = "登录成功";
			//把登录信息绑定在session中
			req.getSession().setAttribute("user", u);
		}else {
			message = "用户名或者密码错误";
		}
		resp.getWriter().println(JSON.toJSONString(message));

	}
}
