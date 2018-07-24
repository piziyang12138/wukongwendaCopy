package com.neu.servlet;

import com.neu.bean.CommentInformation;
import com.neu.bean.UserInfo;
import com.neu.dao.ICommentInfoDao;
import com.neu.dao.IFollowerDao;
import com.neu.dao.ILikeDao;
import com.neu.dao.IUserDao;
import com.neu.daoImp.CommentInfoDao;
import com.neu.daoImp.FollowerDao;
import com.neu.daoImp.LikeDao;
import com.neu.daoImp.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@WebServlet(name = "ToUserServlet",urlPatterns = "/toUser.do")
public class ToUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserInfo user1 = (UserInfo) request.getSession().getAttribute("user");


        ICommentInfoDao commentInfoDao = new CommentInfoDao();
        List<CommentInformation> list = commentInfoDao.queryCommentInfoById(Integer.parseInt(id));
        IUserDao userDao = new UserDao();
        UserInfo user = userDao.queryUserById(Integer.parseInt(id));
        boolean followed = false;
        if (user1 != null) {
            IFollowerDao followerDao = new FollowerDao();
            Set<Long> set = followerDao.queryAllFollower(user1.getId().intValue());

            if (set.contains(Long.parseLong(id))){
                followed = true;
            }
        }

        request.setAttribute("comments",list);
        request.setAttribute("userinfo",user);
        request.setAttribute("followed",followed);
        request.getRequestDispatcher(request.getContextPath() + "/jsp/user.jsp").forward(request,response);
    }
}
