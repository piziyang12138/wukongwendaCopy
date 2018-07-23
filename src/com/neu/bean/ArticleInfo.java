package com.neu.bean;

public class ArticleInfo extends Article{
    private int rescount;
    private String comment_content;
    private String comment_username;
    private String upicpath;
    private int collection_count;
    private int comment_userid;
    private int comment_id;

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public int getComment_userid() {
        return comment_userid;
    }

    public void setComment_userid(int comment_userid) {
        this.comment_userid = comment_userid;
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

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public String getComment_username() {
        return comment_username;
    }

    public void setComment_username(String comment_username) {
        this.comment_username = comment_username;
    }

    public int getRescount() {
        return rescount;
    }

    public void setRescount(int rescount) {
        this.rescount = rescount;
    }

}
