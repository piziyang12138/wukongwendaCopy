package com.neu.bean;

/**
 * Created by ttc on 2018/7/20.
 */
public class CommentAndUser extends Commentinfo{
    private String username;
    private String picpath;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }
}
