package com.neu.dao;

import com.neu.bean.Article;

import java.util.List;

/**
 * Created by ttc on 2018/7/20.
 */
public interface IArticleDao {
    int addArticle(Article article);
    List<Article> queryArticleByPage(int pageindex,int pagesize);
    Article queryArticleByAid(int aid);
}
