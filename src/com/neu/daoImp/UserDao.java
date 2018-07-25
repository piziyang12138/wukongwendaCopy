package com.neu.daoImp;

import com.neu.bean.User;
import com.neu.bean.UserInfo;
import com.neu.dao.IUserDao;
import com.neu.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttc on 2018/7/18.
 */
public class UserDao implements IUserDao {

    Connection con = JDBCUtils.getConnection();
    @Override
    public int addUser(UserInfo user) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("insert into user(username,pwd) values(?,?)");
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPwd());
            res = ps.executeUpdate();

            ps = con.prepareStatement("select last_insert_id() as lastid");
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                user.setId(rs.getLong("lastid"));
                user.setPicpath("default.jpg");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int isUserExist(UserInfo user) {
        int res = 0;
        try {
//            PreparedStatement ps = con.prepareStatement("select `user`.* ,count(*) as count,(select count(*) from follower where followid = `user`.id) as fcount,(select count(*) from follower where followedid = `user`.id) as fdcount FROM `user` join commentinfo on `user`.id = commentinfo.userid where username=? and pwd = ? GROUP BY id");
            PreparedStatement ps = con.prepareStatement("select * FROM `user` where username=? and pwd = ?");
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPwd());
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                user.setId(rs.getLong("id"));
                user.setPicpath(rs.getString("picpath"));
                user.setIntroduction(rs.getString("introduction"));
//                user.setRescount(rs.getInt("count"));
//                user.setFollowedcount(rs.getInt("fdcount"));
//                user.setFollowcount(rs.getInt("fcount"));
                res = 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int updateUserById(UserInfo user) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("update user SET username = ? ,pwd = ?,picpath = ?,introduction = ? WHERE id = ?");
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPwd());
            ps.setString(3,user.getPicpath());
            ps.setString(4,user.getIntroduction());
            ps.setLong(5,user.getId());
            res = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public UserInfo queryUserById(int id) {
        UserInfo user = new UserInfo();
        try {
            PreparedStatement ps = con.prepareStatement("select user.* ,(select count(*) from commentinfo where `user`.id=commentinfo.userid)  as count,(select count(*) from follower where followid = `user`.id) as fcount,(select count(*) from follower where followedid = `user`.id) as fdcount FROM user left join commentinfo on user.id = commentinfo.userid where id = ? GROUP BY id");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                user.setId(rs.getLong("id"));
                user.setUsername(rs.getString("username"));
                user.setPicpath(rs.getString("picpath"));
                user.setIntroduction(rs.getString("introduction"));
                user.setRescount(rs.getInt("count"));
                user.setFollowedcount(rs.getInt("fdcount"));
                user.setFollowcount(rs.getInt("fcount"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
