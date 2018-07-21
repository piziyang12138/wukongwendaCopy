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
    public int addUser(User user) {
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
            PreparedStatement ps = con.prepareStatement("select user.* ,count(*) as count FROM user join commentinfo on user.id = commentinfo.userid\nwhere username=? and pwd = ? GROUP BY id");
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPwd());
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                user.setId(rs.getLong("id"));
                user.setPicpath(rs.getString("picpath"));
                user.setIntroduction(rs.getString("introduction"));
                user.setRescount(rs.getInt("count"));
                res = 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int updateUserById(User user) {
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
}
