package com.neu.servlet;

import com.alibaba.fastjson.JSON;
import com.neu.bean.Article;
import com.neu.bean.ArticleInfo;
import com.neu.bean.UserInfo;
import com.neu.dao.IArticleDao;
import com.neu.dao.ILikeDao;
import com.neu.daoImp.ArticleDao;
import com.neu.daoImp.LikeDao;
import com.neu.utils.ArticlesWarp;

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
 * Created by ttc on 2018/7/25.
 */
@WebServlet(name = "GetMoreArticleServlet",urlPatterns = "/getmore.do")
public class GetMoreArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aid = request.getParameter("aid");

        IArticleDao iArticleDao = new ArticleDao();

        List<ArticleInfo> articles =  iArticleDao.getMoreArticle(Integer.parseInt(aid));
        ILikeDao likeDao = new LikeDao();
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

        ArticlesWarp articlesWarp = new ArticlesWarp();
        articlesWarp.setList(articles);

        response.getWriter().print(JSON.toJSONString(articlesWarp));
    }
}
