package action;

import beans.Circle;
import beans.Rectangle;
import com.opensymphony.xwork2.ActionSupport;

public class Compute extends ActionSupport {
    private Circle circle;
    private Rectangle rectangle;
    private String submit_compute;

    public Rectangle getRectangle() {
        return rectangle;
    }

    public void setRectangle(Rectangle rectangle) {
        this.rectangle = rectangle;
    }

    public Circle getCircle() {
        return circle;
    }

    public void setCircle(Circle circle) {
        this.circle = circle;
    }


    public String getSubmit_compute() {
        return submit_compute;
    }

    public void setSubmit_compute(String submit_compute) {
        this.submit_compute = submit_compute;
    }

    @Override
    public void validate() {
        if ("计算周长".equals(submit_compute)){
            double result = computePerimeter();
            if(circle != null){
                addActionMessage("半径为" + circle.getRadius() +"的圆周长为"+ result);
            }
            if(rectangle != null){
                addActionMessage("高为" + rectangle.getHeight() +"宽为"+rectangle.getWidth()+"的矩形的周长为"+result);
            }
        }

        if ("计算面积".equals(submit_compute)){
            double result = computeArea();
            if(circle != null){
                addActionMessage("半径为" + circle.getRadius() +"的圆面积为"+ result);
            }
            if(rectangle != null){
                addActionMessage("高为" + rectangle.getHeight() +"宽为"+rectangle.getWidth()+"的矩形的面积为"+result);
            }
        }
    }


    @Override
    public String execute() throws Exception {

        return "result";
    }

    public double computeArea(){
        if (circle != null){
            return circle.getArea();
        }
        else if (rectangle != null){
            return rectangle.getArea();
        }
        else return 0;
    }
    public double computePerimeter(){
        if (circle != null){
            return circle.getPerimeter();
        }
        else if (rectangle != null){
            return rectangle.getPerimeter();
        }
        else return 0;
    }
}
