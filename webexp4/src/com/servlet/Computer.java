package com.servlet;

import shape.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;

@WebServlet("/computer")
public class Computer extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        Shape shape;
        PrintWriter out = response.getWriter();
        String strShape = (String)request.getSession().getAttribute("shape");
        if ("circle".equals(strShape)){
            double radius = Double.parseDouble(request.getParameter("radius"));
            shape = new Circle(radius);
            if ("计算周长".equals(request.getParameter("submit_per"))){
                out.print("半径为："+radius+" 的圆形的周长为"+shape.getPerimeter());
            }
            else if ("计算面积".equals(request.getParameter("submit_area"))){
                out.print("半径为："+radius+" 的圆形的面积为"+shape.getArea());
            }
        }
        else if ("rectangle".equals(strShape)){
            double width = Double.parseDouble(request.getParameter("width"));
            double height = Double.parseDouble(request.getParameter("height"));
            shape = new Rectangle(width,height);
            if ("计算周长".equals(request.getParameter("submit_per"))){
                out.print("宽为："+width+" 高为"+height +" 的矩形的周长为"+shape.getPerimeter());
            }
            else if ("计算面积".equals(request.getParameter("submit_area"))){
                out.print("宽为："+width+" 高为"+height +" 的矩形的面积为"+shape.getArea());
            }
        }
    }
}
