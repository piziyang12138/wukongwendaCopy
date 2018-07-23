package com.neu.daoImp;

import com.neu.bean.Likeorunlike;
import com.neu.dao.ILikeDao;
import com.neu.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttc on 2018/7/23.
 */
public class LikeDao implements ILikeDao {

    Connection con = JDBCUtils.getConnection();
    @Override
    public int addLike(Likeorunlike likeorunlike) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("insert into likeorunlike(commentid,userid,islike) values(?,?,?)");
            ps.setLong(1, likeorunlike.getCommentid());
            ps.setLong(2, likeorunlike.getUserid());
            ps.setLong(3,likeorunlike.getIslike());
            res = ps.executeUpdate();

            ps = con.prepareStatement("select last_insert_id() as lastid");
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                likeorunlike.setLid(rs.getLong("lastid"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int isLiked(Likeorunlike likeorunlike) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("select * FROM likeorunlike where commentid = ? AND userid = ?");
            ps.setLong(1, likeorunlike.getCommentid());
            ps.setLong(2, likeorunlike.getUserid());
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                likeorunlike.setLid(rs.getLong("fid"));
                res = 1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delLike(Likeorunlike likeorunlike) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("DELETE FROM likeorunlike where fid = ?");
            ps.setLong(1, likeorunlike.getLid());
            res = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }
}
