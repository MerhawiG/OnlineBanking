package security;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by 986296 on 5/21/2018.
 */

//@WebFilter(urlPatterns = {"/"})
public class UnathenticatedFilter implements Filter{
    public void init(FilterConfig arg0) throws ServletException {}

    public void doFilter(ServletRequest req, ServletResponse resp,
                         FilterChain chain) throws IOException, ServletException {

        HttpServletRequest servletRequest = (HttpServletRequest) req;
        if(servletRequest.getSession() != null && servletRequest.getSession().getAttribute("userName") != null){

            req.getRequestDispatcher("/welcome").forward(req,resp);

        }else {
            chain.doFilter(req, resp);//sends request to next resource
        }
    }
    public void destroy() {}
}
