package com.neu.dao;

import com.neu.bean.User;
import com.neu.bean.UserInfo;

/**
 * Created by ttc on 2018/7/18.
 */
public interface IUserDao {
    int addUser(UserInfo user);
    int isUserExist(UserInfo user);
    int updateUserById(UserInfo user);
    UserInfo queryUserById(int id);
}
