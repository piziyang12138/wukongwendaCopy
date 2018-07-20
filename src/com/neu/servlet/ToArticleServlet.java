package com.neu.servlet;

import com.neu.bean.Article;
import com.neu.bean.CommentAndUser;
import com.neu.bean.Commentinfo;
import com.neu.dao.IArticleDao;
import com.neu.dao.ICommentInfoDao;
import com.neu.daoImp.ArticleDao;
import com.neu.daoImp.CommentInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by ttc on 2018/7/20.
 */
@WebServlet(name = "ToArticleServlet",urlPatterns = "/to_article.do")
public class ToArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aid = request.getParameter("aid");

        IArticleDao articleDao = new ArticleDao();
        ICommentInfoDao commentInfoDao = new CommentInfoDao();
        List<CommentAndUser> list = commentInfoDao.queryCommentByAid(Integer.parseInt(aid),1,10);

        Article article = articleDao.queryArticleByAid(Integer.parseInt(aid));
        request.setAttribute("article",article);
        request.setAttribute("comments",list);
        request.setAttribute("count",list.size());
        request.getRequestDispatcher(request.getContextPath() + "/jsp/article.jsp").forward(request,response);

    }
}
