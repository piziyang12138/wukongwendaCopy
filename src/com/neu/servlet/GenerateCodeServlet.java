package com.neu.servlet;

import com.neu.utils.GenerateCode;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

/**
 * Created by ttc on 2018/7/18.
 */
@WebServlet(name = "GenerateCodeServlet",urlPatterns = "/generatecode.do")
public class GenerateCodeServlet extends HttpServlet {
    private int codeCount = 4;

    //验证码由哪些字符组成
    char [] codeSequence = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".toCharArray();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        for (int i = 0;i < codeCount;i++){
            Random random = new Random();
            int index = random.nextInt(62);
            sb.append(codeSequence[index]);
        }

        request.getSession().setAttribute("vertifycode",sb.toString());

        GenerateCode gc = new GenerateCode();
        BufferedImage image = gc.Generate(sb.toString());
        OutputStream os = response.getOutputStream();
        ImageIO.write(image,"jpg",os);

        os.close();
    }
}
