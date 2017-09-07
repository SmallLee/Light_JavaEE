package dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;

@WebServlet(name = "FirstServlet",urlPatterns = "/firstservlet")
public class FirstServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charst=utf-8");
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        String[] colors = req.getParameterValues("color");
        String country = req.getParameter("country");
        PrintStream printStream = new PrintStream(resp.getOutputStream());
        printStream.println("<html>");
        printStream.println("<head>");
        printStream.println("<title>Servlet测试</title>");
        printStream.println("</head>");
        printStream.println("</body>");
        printStream.println("名字是： "+name+"<br>");
        printStream.println("性别是： "+gender+"<br>");
        for (String color : colors) {
            printStream.println("颜色： "+color);
        }
        printStream.println("国家是： "+country+"<br>");
        printStream.println("</body>");
        printStream.println("</html>");
    }
}
