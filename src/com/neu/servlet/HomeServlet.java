package com.neu.servlet;

import com.neu.bean.Article;
import com.neu.bean.ArticleInfo;
import com.neu.dao.IArticleDao;
import com.neu.daoImp.ArticleDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by ttc on 2018/7/19.
 */
@WebServlet(name = "HomeServlet",urlPatterns = "/home.do")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IArticleDao articleDao = new ArticleDao();
        List<ArticleInfo> articles = articleDao.queryArticleByPage(1,20);
        request.setAttribute("articles",articles);
        request.getRequestDispatcher(request.getContextPath() + "/index.jsp").forward(request,response);
    }
}
