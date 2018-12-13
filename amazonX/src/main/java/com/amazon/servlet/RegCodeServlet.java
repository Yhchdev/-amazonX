package com.amazon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

public class RegCodeServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("application/json;charset=utf-8");
		HttpSession session = req.getSession();
		//从session中取出验证码
		String sCode = (String)session.getAttribute("code");
		//从请求中取出验证码   .前面是null就会报空指针异常  key=value
		String code = req.getParameter("code").toUpperCase();
		String message = null;
		if(code.equals(sCode)) {
			message = "验证码校验成功";
		}else {
			message = "验证码错误";
		}
		PrintWriter pw = resp.getWriter();
		pw.println(JSON.toJSONString(message));
		pw.close();//关闭输出流，一定一定要关闭
	}
}
