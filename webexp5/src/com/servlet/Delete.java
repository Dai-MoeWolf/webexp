package com.servlet;

import com.jdbc.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Delete {
    static Connection conn = null;
    static ResultSet rsByid = null;
    static PreparedStatement psByid = null;
    static ResultSet rs = null;
    static PreparedStatement ps = null;

    public static int deleteByID(int id) {
        int i = 0;
        try {
            conn = DBUtil.init();
            String
            sql = "delete from studentbase a where id =" + id;
            PreparedStatement ps = conn.prepareStatement(sql);
            i = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("sql数据库增删改异常");
            e.printStackTrace();
        }
        return i;
    }
}
