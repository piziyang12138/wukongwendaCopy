package com.neu.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.neu.bean.User;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by ttc on 2018/7/19.
 */
public class JSONUtils {

    private static JSONObject Str2JSON(String str){
        return JSON.parseObject(str);
    }

    public static User Str2User(String str){
        User user = new User();
        JSONObject obj = Str2JSON(str);
        user.setPicpath(obj.getString("picpath"));
        user.setIntroduction(obj.getString("introduction"));
        user.setUsername(obj.getString("username"));
        user.setId(Long.parseLong(obj.getString("id")));
        return user;
    }
}
