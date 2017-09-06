package dao;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "get-application",urlPatterns = "/get-application")
public class GetApplication extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=gb2312");
        PrintWriter writer = resp.getWriter();
        writer.println("<html><head><title>");
        writer.println("测试application");
        writer.println("</title></head><body>");
        ServletContext servletContext = getServletConfig().getServletContext();
        writer.println("counter的值为");
        writer.print(servletContext.getAttribute("counter"));
        writer.println("</body></html>");
    }
}
