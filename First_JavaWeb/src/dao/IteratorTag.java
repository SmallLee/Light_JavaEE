package dao;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Collection;

public class IteratorTag extends SimpleTagSupport {
    //指定需要被遍历的集合
    private String collection ;
    //为集合元素指定的名称
    private String item;

    public void setItem(String item){
        this.item = item;
    }
    public void setCollection(String collection){
        this.collection = collection;
    }
    @Override
    public void doTag() throws JspException, IOException {
        Collection itemList = (Collection) getJspContext().getAttribute(collection);
        for(Object s: itemList) {
            //将集合元素的值设置给item
            getJspContext().setAttribute(item,s);
            //输出标签体
            getJspBody().invoke(null);
        }
    }
}
