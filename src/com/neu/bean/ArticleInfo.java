package com.neu.bean;

public class ArticleInfo extends Article{
    private int rescount;
    private Commentinfo commentinfo;

    public int getRescount() {
        return rescount;
    }

    public void setRescount(int rescount) {
        this.rescount = rescount;
    }

    public Commentinfo getCommentinfo() {
        return commentinfo;
    }

    public void setCommentinfo(Commentinfo commentinfo) {
        this.commentinfo = commentinfo;
    }
}
