package com.neu.daoImp;

import com.neu.bean.CommentInformation;
import com.neu.bean.Commentinfo;
import com.neu.dao.ICommentInfoDao;
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
public class CommentInfoDao implements ICommentInfoDao {

    Connection con = JDBCUtils.getConnection();
    @Override
    public int addComment(Commentinfo commentinfo) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("insert into commentinfo(userid,content,articleid,chtml) values(?,?,?,?)");
            ps.setLong(1,commentinfo.getUserid());
            ps.setString(2,commentinfo.getContent());
            ps.setLong(3,commentinfo.getArticleid());
            ps.setString(4,commentinfo.getChtml());
            res = ps.executeUpdate();

            ps = con.prepareStatement("select last_insert_id() as lastid");
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                commentinfo.setCid(rs.getLong("lastid"));
            }

            ps = con.prepareStatement("select createtime FROM commentinfo WHERE cid=?");
            ps.setLong(1,commentinfo.getCid());
            rs = ps.executeQuery();
            if (rs.next()){
                commentinfo.setCreatetime(rs.getTimestamp("createtime"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public List<CommentInformation> queryCommentByAid(int aid, int pageindex, int pagesize) {
        List<CommentInformation> arr = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("SELECT commentinfo.*,`user`.picpath,`user`.username,likeorunlike.*,(SELECT count(*) FROM likeorunlike WHERE commentid = cid AND islike=1) AS likecount,\n" +
                    "(SELECT count(*) FROM likeorunlike WHERE commentid = cid AND islike=0) AS unlikecount\n" +
                    " FROM commentinfo\n" +
                    "LEFT JOIN `user` ON commentinfo.userid = `user`.id\n" +
                    "LEFT JOIN likeorunlike ON commentinfo.cid = likeorunlike.commentid\n" +
                    "WHERE articleid = ? LIMIT ?,?");
            ps.setInt(1,aid);
            ps.setInt(2,(pageindex-1)*pagesize);
            ps.setInt(3,pagesize);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                CommentInformation commentinfo = new CommentInformation();
                commentinfo.setCid(rs.getLong("cid"));
                commentinfo.setChtml(rs.getString("chtml"));
                commentinfo.setArticleid(rs.getLong("articleid"));
                commentinfo.setUserid(rs.getLong("userid"));
                commentinfo.setContent(rs.getString("content"));
                commentinfo.setCreatetime(rs.getTimestamp("createtime"));
                commentinfo.setUsername(rs.getString("username"));
                commentinfo.setPicpath(rs.getString("picpath"));
                commentinfo.setLikecount(rs.getInt("likecount"));
                commentinfo.setUnlikecount(rs.getInt("unlikecount"));
                arr.add(commentinfo);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return arr;
    }

    @Override
    public List<CommentInformation> queryCommentInfoById(int id) {
        List<CommentInformation> arr = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("select article.aid,article.title,commentinfo.content ,(select count(*) from article WHERE articleid = 4) as count FROM commentinfo \n" +
                    "join article on commentinfo.articleid = article.aid\n" +
                    "where commentinfo.userid = ?");
            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                CommentInformation commentinfo = new CommentInformation();
                commentinfo.setContent(rs.getString("content"));
                commentinfo.setArescount(rs.getInt("count"));
                commentinfo.setAtitle(rs.getString("title"));
                commentinfo.setAid(rs.getInt("aid"));
                arr.add(commentinfo);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return arr;
    }
}
