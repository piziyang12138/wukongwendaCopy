package com.neu.servlet;

import com.alibaba.fastjson.JSON;
import jdk.nashorn.internal.parser.JSONParser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/19.
 */
@WebServlet(name = "EditorUserServlet",urlPatterns = "/editor_user.do")
public class EditorUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_str = request.getParameter("user");
        Object user = JSON.parse(user_str);
        System.out.println(user);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
