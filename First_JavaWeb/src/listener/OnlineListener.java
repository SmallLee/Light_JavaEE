package listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.HashMap;
import java.util.Map;

@WebListener
public class OnlineListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        HttpSession session = httpSessionEvent.getSession();
        ServletContext application = session.getServletContext();
        //获取sessionId
        String sessionId = session.getId();
        if (session.isNew()) {
            String user = (String) session.getAttribute("user");
            user = (user == null) ? "游客":user;
            Map<String,String> online = (Map<String, String>) application.getAttribute("online");
            if (online == null) {
                online = new HashMap<String,String>();
            }
            online.put(sessionId,user);
            application.setAttribute("online",online);
        }
    }
    //当用户与服务器之间session断开时触发
    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        HttpSession session = httpSessionEvent.getSession();
        ServletContext application = session.getServletContext();
        String sessionId = session.getId();
        Map<String,String> online = (Map<String, String>) application.getAttribute("online");
        if (online != null) {
            online.remove(sessionId);
        }
        application.setAttribute("online",online);
    }
}
