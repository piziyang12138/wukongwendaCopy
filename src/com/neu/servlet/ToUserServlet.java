package com.neu.servlet;

import com.neu.bean.CommentInformation;
import com.neu.bean.UserInfo;
import com.neu.dao.ICommentInfoDao;
import com.neu.daoImp.CommentInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ToUserServlet",urlPatterns = "/toUser.do")
public class ToUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        ICommentInfoDao commentInfoDao = new CommentInfoDao();
        List<CommentInformation> list = commentInfoDao.queryCommentInfoById(Integer.parseInt(id));

        request.setAttribute("comments",list);
        request.getRequestDispatcher(request.getContextPath() + "/jsp/user.jsp").forward(request,response);
    }
}
