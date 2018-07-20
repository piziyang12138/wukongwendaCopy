package com.neu.servlet;

import com.neu.bean.CommentAndUser;
import com.neu.bean.Commentinfo;
import com.neu.bean.User;
import com.neu.dao.ICommentInfoDao;
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
@WebServlet(name = "CommentServlet",urlPatterns = "/comment.admin")
public class CommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String doc = request.getParameter("test-editormd-markdown-doc");
        String html = request.getParameter("test-editormd-html-code");
        String aid = request.getParameter("aid");

        User user = (User) request.getSession().getAttribute("user");

        Commentinfo commentinfo = new Commentinfo();
        commentinfo.setArticleid(Long.parseLong(aid));
        commentinfo.setChtml(html);
        commentinfo.setContent(doc);
        commentinfo.setUserid(user.getId());

        ICommentInfoDao commentInfoDao = new CommentInfoDao();
        commentInfoDao.addComment(commentinfo);

        List<CommentAndUser> list = commentInfoDao.queryCommentByAid(Integer.parseInt(aid),1,10);
        request.setAttribute("comments",list);
        request.setAttribute("count",list.size());
        request.getRequestDispatcher(request.getContextPath() + "/jsp/article.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
