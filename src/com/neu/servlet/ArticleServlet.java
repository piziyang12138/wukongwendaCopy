package com.neu.servlet;

import com.neu.bean.Article;
import com.neu.bean.User;
import com.neu.dao.IArticleDao;
import com.neu.daoImp.ArticleDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/20.
 */
@WebServlet(name = "ArticleServlet",urlPatterns = "/article_add.admin")
public class ArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String img_path = request.getParameter("img_path");
        String content = request.getParameter("content");

        User user = (User)request.getSession().getAttribute("user");

        Article article = new Article();
        article.setTitle(title);
        article.setContent(content);
        article.setPicpath(img_path);
        article.setUserid(user.getId());


        IArticleDao articleDao = new ArticleDao();
        articleDao.addArticle(article);
        response.getWriter().print("successful");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
