package com.service.impl;

import com.entity.Announcement;
import com.entity.News;
import com.listener.DataSourceUtils;
import com.service.AnnouncementService;
import com.util.SQLUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AnnouncementImpl implements AnnouncementService {
    @Override
    public List<Announcement> listAnnouncement() {
        List<Announcement> announcements = new ArrayList<>();
        String sql = "SELECT Aid,Title,Context,Add_date from Announcement";

        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery()){
            while (resultSet.next()){
                Announcement announcement = new Announcement();
                announcement.setAid(resultSet.getInt("Aid"));
                announcement.setTitle(resultSet.getString("Title"));
                announcement.setContext(resultSet.getString("Context"));
                announcement.setAdd_date(resultSet.getString("Add_date"));
                announcements.add(announcement);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return announcements;
    }

    @Override
    public Announcement listAnnouncementByNid(int Aid) {
        Announcement announcement = null;
        String sql = "SELECT Aid,Title,Context,Add_date from Announcement where Aid=?";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,Aid);
            try(ResultSet resultSet = statement.executeQuery()){
                while (resultSet.next()){
                    announcement = new Announcement();
                    announcement.setAid(resultSet.getInt("Aid"));
                    announcement.setTitle(resultSet.getString("Title"));
                    announcement.setContext(resultSet.getString("Context"));
                    announcement.setAdd_date(resultSet.getString("Add_date"));
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return announcement;
    }

    @Override
    public List<Announcement> list5Announcement() {
        List<Announcement> announcements = new ArrayList<>();
        String sql = "SELECT Aid,Title,Context,Add_date from Announcement order by Add_date";
        int count = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery()){
            while (resultSet.next() && count <5){
                Announcement announcement = new Announcement();
                announcement.setAid(resultSet.getInt("Aid"));
                announcement.setTitle(resultSet.getString("Title"));
                announcement.setContext(resultSet.getString("Context"));
                announcement.setAdd_date(resultSet.getString("Add_date"));
                announcements.add(announcement);
                count += 1;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return announcements;
    }

    @Override
    public int DeleteAnnouncement(int Aid) {
        String sql = "DELETE FROM Announcement where Aid=?";
        int flag = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,Aid);
            flag = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public int InsertAnnouncement(String Title, String Context) {
        String sql = "INSERT INTO Announcement(Aid,Title,Context,Add_date) " +
                " values(?,?,?,now())";
        int flag = 0;
        int Aid = Count() + 1;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,Aid);
            statement.setString(2,Title);
            statement.setString(3,Context);

            flag = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public int UpdateAnnouncement(int Aid, String Title, String Context) {
        String sql = "UPDATE Announcement SET Title=?,Context=? where Aid=?";
        int flag = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setString(1,Title);
            statement.setString(2,Context);
            statement.setInt(3,Aid);

            flag = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<Announcement> QueryAnnouncements(String Aid, String Title) {
        List<Announcement> announcements = new ArrayList<>();
        SQLUtils sqlUtil = new SQLUtils();
        String sql = "SELECT Aid,Title,Context,Add_date FROM Announcement where 1=1 ";
        sql += sqlUtil.subSQL(Aid,Title);
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
        ){
            while (resultSet.next()){
                Announcement announcement = new Announcement();
                announcement.setAid(resultSet.getInt("Aid"));
                announcement.setTitle(resultSet.getString("Title"));
                announcement.setContext(resultSet.getString("Context"));
                announcement.setAdd_date(resultSet.getString("Add_date"));
                announcements.add(announcement);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return announcements;
    }

    /*
    该方法用于查询数据库中Announcement的个数
     */
    public static int Count(){
        String sql = "SELECT count(*) as Count FROM Announcement";
        int count = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery()){
            while (resultSet.next()){
                count = resultSet.getInt("Count");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }
}
