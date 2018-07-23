package com.neu.servlet;

import com.neu.bean.Likeorunlike;
import com.neu.bean.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/23.
 */
@WebServlet(name = "LikeOrUnlikeServlet",urlPatterns = "/likeorunlike.admin")
public class LikeOrUnlikeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid = request.getParameter("cid");
        String islike = request.getParameter("islike");
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");

        Likeorunlike likeorunlike = new Likeorunlike();
        likeorunlike.setCommentid(Long.parseLong(cid));
        likeorunlike.setIslike(Long.parseLong(islike));
        likeorunlike.setUserid(user.getId());


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
