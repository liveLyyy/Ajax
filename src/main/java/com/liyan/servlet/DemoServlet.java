package com.liyan.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.liyan.pojo.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/demo")
public class DemoServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        Users users = new Users();
        users.setId(2);
        users.setUsername("张三");
        users.setPassword("123");
        Users users1 = new Users();
        users1.setId(3);
        users1.setUsername("李四");
        users1.setPassword("456");
        ObjectMapper objectMapper = new ObjectMapper();
        List<Users> list=new ArrayList<Users>();
        list.add(users);
        list.add(users1);
        String result = objectMapper.writeValueAsString(list);
        PrintWriter out = resp.getWriter();
        out.println(result);
        out.flush();
        out.close();
    }
}
