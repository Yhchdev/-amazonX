package com.amazon.servlet;

import com.amazon.dao.NewsDao;
import com.amazon.entity.News;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ReadNewsServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        NewsDao newsDao = new NewsDao();
        int nid = Integer.parseInt(req.getParameter("nid"));
        News nd = newsDao.newsDetails(nid);
        System.out.println(nd);
        req.setAttribute("NewInfo",nd);
        req.getRequestDispatcher("news_view.jsp").forward(req,resp);
    }
}
