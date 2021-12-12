package com.service;

import com.entity.News;
import com.entity.Teacher;
import com.service.impl.AnnouncementImpl;
import com.service.impl.NewsServiceImpl;
import com.service.impl.TeacherServiceImpl;

public class ServiceFactory {
    private static final TeacherService teacherService = createTS();
    private static final NewsService newsService = createNS();
    private static final AnnouncementService announcementService = createAS();

    /*
    创建teacherService,返回一个teacherService给外部使用
    */
    private static TeacherService createTS(){
        return new TeacherServiceImpl();
    }
    public static TeacherService getTeacherService(){
        return teacherService;
    }
    /*
    创建NewsService,返回一个teacherService给外部使用
    */
    private static NewsService createNS(){
        return new NewsServiceImpl();
    }
    public static NewsService getNewsService(){
        return newsService;
    }
    /*
    创建AnnouncementService,返回一个teacherService给外部使用
     */
    private static AnnouncementService createAS(){
        return new AnnouncementImpl();
    }
    public static AnnouncementService getAnnouncementService(){
        return announcementService;
    }
}
