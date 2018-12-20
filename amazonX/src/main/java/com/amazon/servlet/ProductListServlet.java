package com.amazon.servlet;

import com.alibaba.fastjson.JSON;
import com.amazon.dao.RecommendDao;
import com.amazon.entity.Recomments;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductListServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        int chid_id = Integer.parseInt(req.getParameter("child_id"));
        int hpc_id = Integer.parseInt(req.getParameter("hpc_id"));
        int page = Integer.parseInt(req.getParameter("page"));
        RecommendDao recommendDao = new RecommendDao();
        List<Recomments> list = recommendDao.findall(chid_id,hpc_id,page);
        int count = recommendDao.count(chid_id,hpc_id);
        int pages = count%8==0 ? count/8 : count/8+1;
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("pages",pages);
        map.put("list",list);
        System.out.println(map);
        PrintWriter pw = resp.getWriter();
        pw.println(JSON.toJSONString(map));
        pw.close();

    }
}
