package listener;

import com.sun.xml.internal.ws.resources.HttpserverMessages;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

@WebListener
public class RequestListener implements ServletRequestListener,ServletRequestAttributeListener {
    @Override
    //request范围内的属性被添加时触发
    public void attributeAdded(ServletRequestAttributeEvent servletRequestAttributeEvent) {

    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent servletRequestAttributeEvent) {

    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent servletRequestAttributeEvent) {

    }

    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {

    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequestEvent.getServletRequest();
        System.out.println("发向"+httpServletRequest.getRequestURI()+"的请求被初始化");
    }
}
