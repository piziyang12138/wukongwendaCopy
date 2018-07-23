package com.neu.daoImp;

import com.neu.bean.Article;
import com.neu.bean.ArticleInfo;
import com.neu.dao.IArticleDao;
import com.neu.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 2018/7/20.
 */
public class ArticleDao implements IArticleDao{

    Connection con = JDBCUtils.getConnection();
    @Override
    public int addArticle(Article article) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("insert into article(title,userid,content,picpath) values(?,?,?,?)");
            ps.setString(1,article.getTitle());
            ps.setLong(2,article.getUserid());
            ps.setString(3,article.getContent());
            ps.setString(4,article.getPicpath());
            res = ps.executeUpdate();

            ps = con.prepareStatement("select last_insert_id() as lastid");
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                article.setAid(rs.getLong("lastid"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;

    }

    @Override
    public List<ArticleInfo> queryArticleByPage(int pageindex, int pagesize) {
        List<ArticleInfo> arr = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("SELECT (select count(*) FROM collection where articleid = aid) as collection_count,article.*,commentinfo.chtml,(SELECT count(*) FROM commentinfo WHERE articleid = aid) AS count,`user`.username,`user`.picpath as upicpath,commentinfo.userid as comment_userid,commentinfo.cid   FROM article \n" +
                    "LEFT JOIN commentinfo ON article.aid = commentinfo.articleid\n" +
                    "LEFT JOIN user ON commentinfo.userid = user.id\n" +
                    "GROUP BY aid order BY aid DESC LIMIT ?,? ");
            ps.setInt(1,(pageindex-1)*pagesize);
            ps.setInt(2,pagesize);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                ArticleInfo article = new ArticleInfo();
                article.setAid(rs.getLong("aid"));
                article.setUserid(rs.getLong("userid"));
                article.setPicpath(rs.getString("picpath"));
                article.setContent(rs.getString("content"));
                article.setTitle(rs.getString("title"));
                article.setCreatetime(rs.getTimestamp("createtime"));
                article.setComment_content(rs.getString("chtml"));
                article.setRescount(rs.getInt("count"));
                article.setComment_username(rs.getString("username"));
                article.setUpicpath(rs.getString("upicpath"));
                article.setCollection_count(rs.getInt("collection_count"));
                article.setComment_userid(rs.getInt("comment_userid"));
                article.setComment_id(rs.getInt("comment_id"));
                arr.add(article);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return arr;
    }

    @Override
    public ArticleInfo queryArticleByAid(int aid) {
        ArticleInfo article = new ArticleInfo();
        try {
            PreparedStatement ps = con.prepareStatement("select article.*,(select count(*) FROM collection where articleid = aid) as count from article WHERE aid = ?");
            ps.setInt(1,aid);

            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                article.setAid((long)aid);
                article.setUserid(rs.getLong("userid"));
                article.setPicpath(rs.getString("picpath"));
                article.setContent(rs.getString("content"));
                article.setTitle(rs.getString("title"));
                article.setCreatetime(rs.getTimestamp("createtime"));
                article.setCollection_count(rs.getInt("count"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return article;
    }
}
