package com.neu.servlet;

import com.neu.bean.User;
import com.neu.bean.UserInfo;
import com.neu.dao.IUserDao;
import com.neu.daoImp.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/18.
 */
@WebServlet(name = "RegisterServlet",urlPatterns = "/register.do")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");

        UserInfo user = new UserInfo();
        user.setUsername(username);
        user.setPwd(pwd);

        IUserDao userDao = new UserDao();
        userDao.addUser(user);

        request.getSession().setAttribute("user",user);

        response.sendRedirect("/home.do");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
