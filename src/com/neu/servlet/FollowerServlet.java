package com.neu.servlet;

import com.neu.bean.Follower;
import com.neu.bean.UserInfo;
import com.neu.dao.IFollowerDao;
import com.neu.daoImp.FollowerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/23.
 */
@WebServlet(name = "FollowerServlet",urlPatterns = "/follower.admin")
public class FollowerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");
        String followedid = request.getParameter("followedid");

        Follower follower = new Follower();
        follower.setFollowedid(Long.parseLong(followedid));
        follower.setFollowid(user.getId());

        IFollowerDao followerDao = new FollowerDao();

        if (followerDao.isFollowed(follower) > 0){
            followerDao.delFollower(follower);
        }
        else{
            followerDao.addFollower(follower);
        }

        response.getWriter().print("successful");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
