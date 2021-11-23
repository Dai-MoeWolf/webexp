package action;

import com.opensymphony.xwork2.ActionSupport;

public class SelectShape extends ActionSupport {
    private String shapeSelected;

    public String getShapeSelected() {
        return shapeSelected;
    }

    public void setShapeSelected(String shapeSelected) {
        this.shapeSelected = shapeSelected;
    }

    @Override
    public void validate() {
        if (shapeSelected == null){
            addFieldError("shapeSelected","请选择一个图形！！！");
        }
    }

    @Override
    public String execute() throws Exception {
        //return super.execute();
        return SUCCESS;
    }
}
