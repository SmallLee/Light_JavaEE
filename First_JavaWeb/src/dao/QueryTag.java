package dao;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

//有属性的标签
public class QueryTag extends SimpleTagSupport {
    private String name;
    private int age;

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().write("name--->"+name+", age--->"+age);
    }
}
