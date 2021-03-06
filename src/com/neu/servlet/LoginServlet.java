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
 * Created by ttc on 2018/7/19.
 */
@WebServlet(name = "LoginServlet",urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");

        UserInfo user = new UserInfo();
        user.setUsername(username);
        user.setPwd(pwd);

        IUserDao userDao = new UserDao();
        int res = userDao.isUserExist(user);

        if (res == 1){
            user = userDao.queryUserById(user.getId().intValue());
            request.getSession().setAttribute("user",user);
            response.sendRedirect("/home.do");
        }
        else{
            request.setAttribute("error","用户名或密码错误");
            response.sendRedirect("/jsp/register_login.jsp?model=login");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
