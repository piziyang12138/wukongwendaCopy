package com.neu.bean;

/**
 * Created by ttc on 2018/7/20.
 */
public class CommentInformation extends Commentinfo{
    private String username;
    private String picpath;
    private String atitle;
    private int arescount;
    private int aid;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAtitle() {
        return atitle;
    }

    public void setAtitle(String atitle) {
        this.atitle = atitle;
    }

    public int getArescount() {
        return arescount;
    }

    public void setArescount(int arescount) {
        this.arescount = arescount;
    }

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
