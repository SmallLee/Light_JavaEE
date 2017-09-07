package dao;

import javax.jws.WebParam;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ConfigServlet",urlPatterns = "/getconfig",initParams = {@WebInitParam(name = "name",value = "小牛"),
@WebInitParam(name = "age",value = "22")})
public class ConfigServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("===="+req.getProtocol());
        ServletConfig servletConfig = getServletConfig();
        String name = servletConfig.getInitParameter("name");
        String age = servletConfig.getInitParameter("age");
        System.out.println("name--->"+name+"---->"+age);
    }
}
