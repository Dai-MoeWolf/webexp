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
        super.validate();
    }

    @Override
    public void addFieldError(String fieldName, String errorMessage) {
        super.addFieldError(fieldName, errorMessage);
    }

    @Override
    public void addActionError(String anErrorMessage) {
        super.addActionError(anErrorMessage);
    }

    @Override
    public String execute()  {
        return "input";
    }
}
