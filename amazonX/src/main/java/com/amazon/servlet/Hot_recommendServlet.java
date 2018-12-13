package com.amazon.servlet;

import com.alibaba.fastjson.JSON;
import com.amazon.entity.Recomments;
import com.amazon.dao.RecommendDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class Hot_recommendServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");

        List<Recomments> list = new RecommendDao().top_5();

        PrintWriter pw = resp.getWriter();
        pw.println(JSON.toJSON(list));
        pw.close();
    }
}
