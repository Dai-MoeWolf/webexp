package com.jdbc;

import java.sql.*;

public class DBUtil {

    //数据库连接信息
    static String url = "jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf8";
    static String user = "root";
    static String password = "123456";
    static Connection conn = null;
    static ResultSet rs = null;
    static PreparedStatement ps = null;

    //初始化，连接数据库
    public static Connection init() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("初始化失败");
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 增加修改删除操作
     *
     * @param sql
     * @return
     */
    public static int addUpdDel(String sql) {
        int i = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            i = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("sql数据库增删改异常");
            e.printStackTrace();
        }
        return i;
    }


    //关闭连接
    public static void closeConn() {
        try {
            ps.close();
            conn.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("sql数据库关闭异常");
            e.printStackTrace();
        }
    }
}