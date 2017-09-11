package filter;

import javax.naming.Name;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.SysexMessage;
import java.io.IOException;
import java.rmi.Naming;
import java.util.logging.Filter;
@WebFilter(filterName = "logfilter",urlPatterns = "/*")
public class LogFilter implements javax.servlet.Filter {
    private FilterConfig filterConfig;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ServletContext servletContext = filterConfig.getServletContext();
        long before = System.currentTimeMillis();
        System.out.println("...开始过滤");
        HttpServletRequest hrequest = (HttpServletRequest) servletRequest;
        System.out.println("已拦截到用户请求的地址： "+hrequest.getServletPath());
        filterChain.doFilter(servletRequest,servletResponse);
        long after = System.currentTimeMillis();
        System.out.println("过滤结束");
        System.out.println("请求被定位到：  "+hrequest.getRequestURL()+"所花的时间为："+(after-before));
    }

    @Override
    public void destroy() {
        this.filterConfig = null;
    }

//    //http://www.tuckey.org/urlrewrite
}
