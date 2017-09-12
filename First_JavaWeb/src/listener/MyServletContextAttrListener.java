package listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyServletContextAttrListener implements ServletContextAttributeListener {
    @Override
    //当程序向application中添加属性时触发，servletcontext.setAttribute方法
    public void attributeAdded(ServletContextAttributeEvent servletContextAttributeEvent) {
        ServletContext servletContext = servletContextAttributeEvent.getServletContext();
        String name = servletContextAttributeEvent.getName();
        Object value = servletContextAttributeEvent.getValue();
        System.out.println(servletContext+"范围内添加了名为"+name+"值为： "+value);
    }
    //移除属性时调用
    @Override
    public void attributeRemoved(ServletContextAttributeEvent servletContextAttributeEvent) {
        ServletContext servletContext = servletContextAttributeEvent.getServletContext();
        String name = servletContextAttributeEvent.getName();
        Object value = servletContextAttributeEvent.getValue();
        System.out.println(servletContext+"范围内移除了名为"+name+"值为： "+value);
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent servletContextAttributeEvent) {
        ServletContext servletContext = servletContextAttributeEvent.getServletContext();
        String name = servletContextAttributeEvent.getName();
        Object value = servletContextAttributeEvent.getValue();
        System.out.println(servletContext+"范围内名为"+name+"，值为： "+value+"的属性被替换了");
    }
}
/*
*
*
* */