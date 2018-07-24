package com.neu.dao;

import com.neu.bean.Follower;
import com.neu.bean.Likeorunlike;

import java.util.Set;

/**
 * Created by ttc on 2018/7/23.
 */
public interface ILikeDao {
    int addLike(Likeorunlike likeorunlike);
    int isLiked(Likeorunlike likeorunlike);
    int delLike(Likeorunlike likeorunlike);
    Set<Long> queryAllLikes(int id);
    Set<Long> queryAllUnLikes(int id);
}
