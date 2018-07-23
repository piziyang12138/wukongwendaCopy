package com.neu.dao;

import com.neu.bean.Follower;

import java.util.List;
import java.util.Set;

/**
 * Created by ttc on 2018/7/23.
 */
public interface IFollowerDao {
    int addFollower(Follower follower);
    int isFollowed(Follower follower);
    int delFollower(Follower follower);
    Set<Long> queryAllFollower(int id);
}
