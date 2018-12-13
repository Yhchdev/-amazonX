package com.amazon.servlet;

import com.alibaba.fastjson.JSON;
import com.amazon.dao.UserDao;
import com.amazon.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class registerServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String userName = req.getParameter("userName");
        String password = req.getParameter("passWord");
        String sex = req.getParameter("sex");
        String birthday = req.getParameter("birthday");
        String identity = req.getParameter("identity");
        String email = req.getParameter("email");
        String mobile = req.getParameter("mobile");
        String address = req.getParameter("address");

        User user = new User();
        user.setHu_user_name(userName);
        user.setHu_password(password);
        user.setHu_sex(sex);
        user.setHu_birthday(birthday);
        user.setHu_identity_code(identity);
        user.setHu_email(email);
        user.setHu_mobile(mobile);
        user.setHu_address(address);

        UserDao dao = new UserDao();
        int line = dao.addUser(user);
        System.out.println(line);
        String mess = null;
        if (line==1){
            mess = "ok";
        }else {
            mess = "false";
        }
        PrintWriter pw = resp.getWriter();
        pw.println(JSON.toJSONString(mess));
        pw.close();
    }
}
