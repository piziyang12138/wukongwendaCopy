package com.neu.dao;

import com.neu.bean.User;

/**
 * Created by ttc on 2018/7/18.
 */
public interface IUserDao {
    int addUser(User user);
    int isUserExist(User user);
    int updateUserById(User user);
}
