package com.neu.servlet;

import com.neu.bean.User;
import com.neu.bean.UserInfo;
import com.neu.dao.IUserDao;
import com.neu.daoImp.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by ttc on 2018/7/19.
 */
@WebServlet(name = "UploadServlet",urlPatterns = "/upload.do")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part part = request.getPart("file");
        if (part == null){
            return;
        }
        String name = part.getSubmittedFileName();
        UUID uuid = UUID.randomUUID();

        String path = request.getServletContext().getRealPath("")+"/upload/";
        File file = new File(path);
        if (!file.exists()){
            file.mkdirs();
        }
        part.write(path+uuid+name);
        response.getWriter().print(uuid+name);
        UserInfo user = (UserInfo)request.getSession().getAttribute("user");
        user.setPicpath(uuid+name);
        request.getSession().setAttribute("user",user);

        IUserDao userDao = new UserDao();
        userDao.updateUserById(user);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
