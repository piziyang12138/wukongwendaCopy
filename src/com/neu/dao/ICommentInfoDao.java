package com.neu.dao;

import com.neu.bean.CommentInformation;
import com.neu.bean.Commentinfo;

import java.util.List;

/**
 * Created by ttc on 2018/7/20.
 */
public interface ICommentInfoDao {
    int addComment(Commentinfo commentinfo);
    List<CommentInformation> queryCommentByAid(int aid, int pageindex, int pagesize);
    List<CommentInformation> queryCommentInfoById(int id);
}
