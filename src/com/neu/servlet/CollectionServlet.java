package com.neu.servlet;

import com.neu.bean.CollectionInfo;
import com.neu.bean.UserInfo;
import com.neu.dao.ICollectionInfoDao;
import com.neu.daoImp.CollectionInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 2018/7/23.
 */
@WebServlet(name = "CollectionServlet", urlPatterns = "/collection.admin")
public class CollectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aid = request.getParameter("aid");
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");

        CollectionInfo collectionInfo = new CollectionInfo();
        collectionInfo.setArticleid(Long.parseLong(aid));
        collectionInfo.setUserid(user.getId());

        ICollectionInfoDao collectionInfoDao = new CollectionInfoDao();
        int row = collectionInfoDao.hasCollected(collectionInfo);

        if (row > 0){
            collectionInfoDao.delCollection(collectionInfo);
        }
        else{
            collectionInfoDao.addCollection(collectionInfo);
        }


        response.getWriter().print("successful");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
