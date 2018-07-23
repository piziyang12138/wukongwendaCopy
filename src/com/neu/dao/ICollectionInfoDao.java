package com.neu.dao;

import com.neu.bean.CollectionInfo;

/**
 * Created by ttc on 2018/7/23.
 */
public interface ICollectionInfoDao {
    int addCollection(CollectionInfo collectionInfo);
    int hasCollected(CollectionInfo collectionInfo);
    int delCollection(CollectionInfo collectionInfo);
}
