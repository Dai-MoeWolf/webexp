package com.servlet;

import com.jdbc.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Update")
public class Update extends HttpServlet {
    static Connection conn = null;
    static ResultSet rsByid = null;
    static PreparedStatement psByid = null;
    static ResultSet rs = null;
    static PreparedStatement ps = null;

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
        DBUtil.addUpdDel("UPDATE studentbase SET name = '"+name +"', age = '"+ age +"'," +
                "sex = '" + sex + "',major = '"+ major + "', department = '" + department + "'"+
                "WHERE id = "+ id );
        DBUtil.addUpdDel("UPDATE studentaddress SET telephone = '"+telephone +"', email = '"+ email +"'" +
                "WHERE id = "+ id );
        response.sendRedirect("result.jsp");
    }
}
