package beans;

public class Circle implements Shape{
    private double radius;
    final private double PI = 3.14;

    public Circle(double radius) {
        this.radius = radius;
    }
    public Circle(){

    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public double getArea(){
        return radius * radius * PI;
    }
    public double getPerimeter(){
        return radius * 2 * PI;
    }
}
