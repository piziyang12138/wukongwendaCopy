package com.neu.daoImp;

import com.neu.bean.CollectionInfo;
import com.neu.dao.ICollectionInfoDao;
import com.neu.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttc on 2018/7/23.
 */
public class CollectionInfoDao implements ICollectionInfoDao {
    Connection con = JDBCUtils.getConnection();
    @Override
    public int addCollection(CollectionInfo collectionInfo) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("insert into collection(userid,articleid) values(?,?)");
            ps.setLong(1, collectionInfo.getUserid());
            ps.setLong(2, collectionInfo.getArticleid());
            res = ps.executeUpdate();

            ps = con.prepareStatement("select last_insert_id() as lastid");
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                collectionInfo.setCid(rs.getLong("lastid"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int hasCollected(CollectionInfo collectionInfo) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("select * FROM collection where userid = ? AND articleid = ?");
            ps.setLong(1, collectionInfo.getUserid());
            ps.setLong(2, collectionInfo.getArticleid());
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                collectionInfo.setCid(rs.getLong("cid"));
                res = 1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delCollection(CollectionInfo collectionInfo) {
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement("DELETE FROM collection where cid = ?");
            ps.setLong(1, collectionInfo.getCid());
            res = ps.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }
}
