package com.neu.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/19.
 */
@WebFilter(filterName = "Filter02_Checklogin",urlPatterns = "*.admin")
public class Filter02_Checklogin implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        if (((HttpServletRequest)req).getSession().getAttribute("user") == null){
            ((HttpServletResponse)resp).sendRedirect(((HttpServletRequest) req).getContextPath() + "/jsp/register_login.jsp?model=login");
        }else{
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
