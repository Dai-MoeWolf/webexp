package action;

import beans.Circle;
import beans.Rectangle;
import beans.Shape;
import com.opensymphony.xwork2.ActionSupport;

public class Compute extends ActionSupport {
    private javax.servlet.http.HttpServletRequest request;
    private String radius;
    private String width;
    private String height;

    String strSubmit = request.getParameter("submit_compute");
    Shape shape;
    Circle circle;
    Rectangle rectangle;

    public String getRadius() {
        return radius;
    }

    public void setRadius(String radius) {
        this.radius = radius;
    }

    public String getWidth() {
        return width;
    }

    public void setWidth(String width) {
        this.width = width;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    @Override
    public String execute() throws Exception {
        if("计算周长".equals(strSubmit)){
            request.setAttribute("per",computePerimeter());
        }
        if("计算面积".equals(strSubmit)){
            request.setAttribute("area",computeArea());
        }
        return SUCCESS;
    }
    public double computePerimeter(){
        return shape.getPerimeter();
    }

    public double computeArea(){
        return shape.getArea();
    }
}
