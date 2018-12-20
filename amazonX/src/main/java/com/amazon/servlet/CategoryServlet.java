package com.amazon.servlet;

import com.alibaba.fastjson.JSON;
import com.amazon.dao.CategoryDao;
import com.amazon.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CategoryServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        CategoryDao categoryDao = new CategoryDao();
        List<Category> parent =categoryDao.findParent();
        List<Category> child = categoryDao.findChild();

        Map<String,List<Category>> map = new HashMap<String,List<Category>>();
        map.put("parent",parent);
        map.put("child",child);

        PrintWriter pw = resp.getWriter();
        pw.println(JSON.toJSONString(map));
        pw.close();
    }
}
