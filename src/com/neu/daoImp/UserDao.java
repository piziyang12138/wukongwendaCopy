package com.neu.daoImp;

import com.neu.bean.User;
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
}
