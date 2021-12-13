package com.service;

import com.entity.News;

import java.util.List;

/*
该接口用于定义有关 News 表的一些基本操作
 */
public interface NewsService {
    /**
     * 查询全部News
     */
    public List<News> listNews();

    /**
     * 根据Nid查询相关News()
     */
    public News listNewsByNid(int Nid);

    /**
     * 按照时间顺序列出最近的5条News
     */

    public List<News> list5News();

    /**
     * 按照Nid删除 News
     */
    public int DeleteNews(int Nid);

    /**
     * 新增News
     */
    public int InsertNews(String author,String title,String context);

    /**
     * 修改News
     */
    public int UpdateNews(int Nid,String author,String title,String context);

    /**
     * 根据Nid,Title,Author查询新闻信息(可查询三者所有组合任一为空都可以)
     */
    public List<News> QueryNews(String Nid,String Title,String Author);
}
