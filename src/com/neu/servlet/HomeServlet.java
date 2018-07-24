package com.neu.servlet;

import com.neu.bean.Article;
import com.neu.bean.ArticleInfo;
import com.neu.bean.CommentInformation;
import com.neu.bean.UserInfo;
import com.neu.dao.IArticleDao;
import com.neu.dao.ILikeDao;
import com.neu.daoImp.ArticleDao;
import com.neu.daoImp.LikeDao;

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
 * Created by ttc on 2018/7/19.
 */
@WebServlet(name = "HomeServlet",urlPatterns = "/home.do")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IArticleDao articleDao = new ArticleDao();
        ILikeDao likeDao = new LikeDao();
        List<ArticleInfo> articles = articleDao.queryArticleByPage(1,20);

        UserInfo user = (UserInfo) request.getSession().getAttribute("user");
        Set<Long> like_set = new HashSet<>();
        Set<Long> unlike_set = new HashSet<>();
        if (user != null){
            like_set = likeDao.queryAllLikes(user.getId().intValue());
            unlike_set = likeDao.queryAllUnLikes(user.getId().intValue());
        }

        for (ArticleInfo article:articles) {
            if (like_set.contains(article.getCommentinfo().getCid())){
                article.getCommentinfo().setIslike(true);
            }else if (unlike_set.contains(article.getCommentinfo().getCid())){
                article.getCommentinfo().setIsunlike(true);
            }
        }
        request.setAttribute("articles",articles);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
