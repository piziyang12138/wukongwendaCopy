package com.neu.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.neu.bean.User;
import com.neu.dao.IUserDao;
import com.neu.daoImp.UserDao;
import com.neu.utils.JSONUtils;
import jdk.nashorn.internal.parser.JSONParser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 2018/7/19.
 */
@WebServlet(name = "EditorUserServlet",urlPatterns = "/editor_user.admin")
public class EditorUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String introduction = request.getParameter("introduction");

        User user = (User) request.getSession().getAttribute("user");

        if (username != null) {
            user.setUsername(username);
        }

        if (introduction != null){
            user.setIntroduction(introduction);
        }

        IUserDao userDao = new UserDao();
        userDao.updateUserById(user);
        request.getSession().setAttribute("user",user);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
