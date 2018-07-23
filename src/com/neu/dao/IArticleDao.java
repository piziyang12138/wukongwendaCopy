package com.neu.dao;

import com.neu.bean.Article;
import com.neu.bean.ArticleInfo;

import java.util.List;

/**
 * Created by ttc on 2018/7/20.
 */
public interface IArticleDao {
    int addArticle(Article article);
    List<ArticleInfo> queryArticleByPage(int pageindex, int pagesize);
    ArticleInfo queryArticleByAid(int aid);
}
