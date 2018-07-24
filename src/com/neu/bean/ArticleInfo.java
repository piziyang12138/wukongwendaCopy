package com.neu.bean;

public class ArticleInfo extends Article{
    private int rescount;
    private CommentInformation commentinfo;
    private String upicpath;
    private int collection_count;


    public CommentInformation getCommentinfo() {
        return commentinfo;
    }

    public void setCommentinfo(CommentInformation commentinfo) {
        this.commentinfo = commentinfo;
    }

    public int getCollection_count() {
        return collection_count;
    }

    public void setCollection_count(int collection_count) {
        this.collection_count = collection_count;
    }

    public String getUpicpath() {
        return upicpath;
    }

    public void setUpicpath(String upicpath) {
        this.upicpath = upicpath;
    }


    public int getRescount() {
        return rescount;
    }

    public void setRescount(int rescount) {
        this.rescount = rescount;
    }

}
