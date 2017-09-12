package listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebListener;
import java.sql.*;

@WebListener
public class GetConListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext servletContext = servletContextEvent.getServletContext();
        String driver = servletContext.getInitParameter("driver");
        String url = servletContext.getInitParameter("url");
        String username = servletContext.getInitParameter("user");
        String password = servletContext.getInitParameter("password");
        try {
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            servletContext.setAttribute("con",connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        ServletContext servletContext = servletContextEvent.getServletContext();
        Connection con = (Connection) servletContext.getAttribute("con");
        if (con != null) {
            try {
                con.close();
                servletContext.setAttribute("con",con);
                servletContext.removeAttribute("con");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
/*
* 在Web应用启动的时候连接数据库，web应用关闭的时候关闭数据库，这个例子中
* 把数据库连接对象保存在application对象中，导致所有的页面都能获得数据库连接
* 这种做法性能比较差，较为实用的做法是，应用启动时把数据源DataSource作为
*对象保存起来
* */