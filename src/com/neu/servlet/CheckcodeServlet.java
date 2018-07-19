package com.neu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/18.
 */
@WebServlet(name = "CheckcodeServlet",urlPatterns = "/checkcode.do")
public class CheckcodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String right_code = (String)request.getSession().getAttribute("vertifycode");

        response.getWriter().print(code.equalsIgnoreCase(right_code) ? "successful" : "failed");

    }
}
