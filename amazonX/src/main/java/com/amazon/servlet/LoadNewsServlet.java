package com.amazon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.amazon.dao.NewsDao;
import com.amazon.entity.News;

public class LoadNewsServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("application/json;charset=utf-8");
		//查数据库，查询所有新闻
		List<News> list = new NewsDao().findAll();
		PrintWriter pw = resp.getWriter();
		pw.println(JSON.toJSONString(list));
		pw.close();
	}
}
