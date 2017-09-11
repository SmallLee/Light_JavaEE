package dao;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.ArrayList;

public class DanyAttributesTag extends SimpleTagSupport implements DynamicAttributes{

    private ArrayList<String> keys = new ArrayList<String>();
    private ArrayList<Object> values = new ArrayList<Object>();
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        out.println("<ol>");
        for (int i = 0; i < keys.size(); i++) {
            String key = keys.get(i);
            Object value = values.get(i);
            out.println("<li>"+key+"--"+value+"</li>");
        }
        out.println("</ol>");
    }

    @Override
    public void setDynamicAttribute(String s, String s1, Object o) throws JspException {
        keys.add(s1);
        values.add(o);
    }
}
