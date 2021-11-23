package com.servlet;

import com.jdbc.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Insert")
public class Insert extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.valueOf(request.getParameter("age"));
        String sex = request.getParameter("sex");
        String department = request.getParameter("department");
        String major = request.getParameter("major");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        ResultSet rs;
        PrintWriter out = response.getWriter();

        DBUtil.init();
        DBUtil.addUpdDel("INSERT INTO studentbase (id,name,age,sex,department,major)" +
                "VALUES(" + id +", '" + name + "' ," + age + ", '" + sex + "' , '" + department + "','" +major+ "')");
        DBUtil.addUpdDel("INSERT INTO studentaddress (id,telephone,email)" +
                "VALUES("+ id +", '"+ telephone + "' , '" + email + "')");
        //request.getRequestDispatcher("result.jsp") .forward(request,response);
        //上面的方式地址栏不变，在jsp传参时，可引发空指针报错
        response.sendRedirect("result.jsp");
    }
}
