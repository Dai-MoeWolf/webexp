package com.servlet;

import com.jdbc.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Query")
public class Query extends HttpServlet {
    static Connection conn = null;
    static ResultSet rsByid = null;
    static PreparedStatement psByid = null;
    static ResultSet rs = null;
    static PreparedStatement ps = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("id")) ;
        selectSqlByid(id);
        request.getRequestDispatcher("result.jsp") .forward(request,response);
    }
    //数据库查询操作
    public static ResultSet selectSql() {
        try {
            String
            sql = "select * from studentbase a ,studentaddress b where a.id = b.id";
            conn = DBUtil.init();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("sql数据库查询异常");
            e.printStackTrace();
        }
        return rs;
    }

    //数据库查询操作（byid）
    public  static ResultSet selectSqlByid(int id) {
        String sql
         = "select studentbase.id , studentbase.name , studentbase.major , studentbase.department , studentaddress.telephone , studentaddress.email from studentbase , studentaddress where studentbase.id=studentaddress.id and studentbase.id="+id;
        try {
            DBUtil.init();
            psByid = conn.prepareStatement(sql);
            rsByid = psByid.executeQuery(sql);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("sql数据库查询异常");
            e.printStackTrace();
        }
        return rsByid;
    }
}
