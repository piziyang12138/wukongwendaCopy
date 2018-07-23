package com.neu.daoImp;

import com.neu.bean.Follower;
import com.neu.dao.IFollowerDao;
import com.neu.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by ttc on 2018/7/23.
 */
public class FollowerDao implements IFollowerDao {

    Connection con = JDBCUtils.getConnection();
    @Override
    public int addFollower(Follower follower) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("insert into follower(followid,followedid) values(?,?)");
            ps.setLong(1, follower.getFollowid());
            ps.setLong(2, follower.getFollowedid());
            res = ps.executeUpdate();

            ps = con.prepareStatement("select last_insert_id() as lastid");
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                follower.setFid(rs.getLong("lastid"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int isFollowed(Follower follower) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("select * FROM follower where followid = ? AND followedid = ?");
            ps.setLong(1, follower.getFollowid());
            ps.setLong(2, follower.getFollowedid());
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                follower.setFid(rs.getLong("fid"));
                res = 1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delFollower(Follower follower) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("DELETE FROM follower where fid = ?");
            ps.setLong(1, follower.getFid());
            res = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public Set<Long> queryAllFollower(int id) {
        Set<Long> set = new HashSet<>();
        try {
            PreparedStatement ps = con.prepareStatement("select * from follower where followid = ?");
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                set.add(rs.getLong("followedid"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return set;
    }
}
