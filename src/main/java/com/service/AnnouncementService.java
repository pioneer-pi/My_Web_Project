package com.service;

import com.entity.Announcement;
import com.entity.News;
import com.entity.Teacher;

import java.util.List;

public interface AnnouncementService {
    /**
     * 查询全部Announcements
     */
    public List<Announcement> listAnnouncement();

    /**
     * 根据Nid查询相关Announcement
     */
    public Announcement listAnnouncementByNid(int Aid);

    /**
     * 按照时间顺序列出最近的5条Announcement
     */

    public List<Announcement> list5Announcement();

    /**
     * 按照Aid删除 Announcement
     */
    public int DeleteAnnouncement(int Aid);

    /**
     * 新增Announcement
     */
    public int InsertAnnouncement(String Title,String Context);
    /**
     * 修改Announcement
     */
    public int UpdateAnnouncement(int Aid,String Title,String Context);
    /**
     * 根据Aid,Title查询新闻公告(可查询二者所有组合任一为空都可以)
     */
    public List<Announcement> QueryAnnouncements(String Aid,String Title);
}
