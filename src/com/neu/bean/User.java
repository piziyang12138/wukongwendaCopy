package com.neu.bean;

public class User {
  private Long id;
  private String username;
  private String pwd;
  private String picpath;
  private String introduction;

  public String getIntroduction() {
    return introduction;
  }

  public void setIntroduction(String introduction) {
    this.introduction = introduction;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

  public String getPicpath() {
    return picpath;
  }

  public void setPicpath(String picpath) {
    this.picpath = picpath;
  }
}
