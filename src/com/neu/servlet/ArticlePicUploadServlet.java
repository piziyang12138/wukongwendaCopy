package com.neu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by ttc on 2018/7/20.
 */
@WebServlet(name = "ArticlePicUploadServlet",urlPatterns = "/article_pic_upload.admin")
@MultipartConfig
public class ArticlePicUploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part part = request.getPart("file");
        if (part == null){
            return;
        }
        String name = part.getSubmittedFileName();
        UUID uuid = UUID.randomUUID();

        String path = request.getServletContext().getRealPath("")+"/upload/";
        File file = new File(path);
        if (!file.exists()){
            file.mkdirs();
        }
        part.write(path+uuid+name);
        response.getWriter().print(uuid+name);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
