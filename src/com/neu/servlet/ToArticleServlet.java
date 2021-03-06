package com.neu.servlet;

import com.neu.bean.*;
import com.neu.dao.*;
import com.neu.daoImp.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by ttc on 2018/7/20.
 */
@WebServlet(name = "ToArticleServlet",urlPatterns = "/to_article.do")
public class ToArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aid = request.getParameter("aid");
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");


        IArticleDao articleDao = new ArticleDao();
        ICommentInfoDao commentInfoDao = new CommentInfoDao();
        ICollectionInfoDao collectionInfoDao = new CollectionInfoDao();
        List<CommentInformation> list = commentInfoDao.queryCommentByAid(Integer.parseInt(aid),1,10);

        ArticleInfo article = articleDao.queryArticleByAid(Integer.parseInt(aid));
        int row = 0;
        if (user != null){
            CollectionInfo collectionInfo = new CollectionInfo();
            collectionInfo.setArticleid(Long.parseLong(aid));
            collectionInfo.setUserid(user.getId());
            row = collectionInfoDao.hasCollected(collectionInfo);

            IUserDao userDao = new UserDao();
            user = userDao.queryUserById(user.getId().intValue());

            IFollowerDao followerDao = new FollowerDao();
            Set<Long> set = followerDao.queryAllFollower(user.getId().intValue());

            ILikeDao likeDao = new LikeDao();
            Set<Long> like_set = new HashSet<>();
            Set<Long> unlike_set = new HashSet<>();
            like_set = likeDao.queryAllLikes(user.getId().intValue());
            unlike_set = likeDao.queryAllUnLikes(user.getId().intValue());


            for (CommentInformation commentInformation:list) {
                if (set.contains(commentInformation.getUserid())){
                    commentInformation.setHasFollowed(true);
                }else {
                    commentInformation.setHasFollowed(false);
                }
                if (like_set.contains(commentInformation.getCid())){
                    commentInformation.setIslike(true);
                }else if (unlike_set.contains(commentInformation.getCid())){
                    commentInformation.setIsunlike(true);
                }
            }
        }




        request.setAttribute("article",article);
        request.setAttribute("comments",list);
        request.setAttribute("count",list.size());
        request.setAttribute("row",row);
        request.getSession().setAttribute("user",user);
        request.getRequestDispatcher("/jsp/article.jsp").forward(request,response);

    }
}
