package com.service.impl;

import com.entity.News;
import com.listener.DataSourceUtils;
import com.service.NewsService;
import com.util.SQLUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsServiceImpl implements NewsService {
    @Override
    public List<News> listNews() {
        List<News> news = new ArrayList<>();
        String sql = "SELECT Nid,Author,Title,Context,Add_date from News";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery()){
            while (resultSet.next()){
                News news1 = new News();
                news1.setNid(resultSet.getInt("Nid"));
                news1.setAuthor(resultSet.getString("Author"));
                news1.setTitle(resultSet.getString("Title"));
                news1.setContext(resultSet.getString("Context"));
                news1.setAdd_date(resultSet.getString("Add_date"));
                news.add(news1);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return news;
    }

    @Override
    public News listNewsByNid(int Nid) {
        News news = null;
        String sql = "SELECT Nid,Author,Title,Context,Add_date from News where Nid=?";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,Nid);
            try(ResultSet resultSet = statement.executeQuery()){
                while (resultSet.next()){
                    news = new News();
                    news.setNid(resultSet.getInt("Nid"));
                    news.setAuthor(resultSet.getString("Author"));
                    news.setTitle(resultSet.getString("Title"));
                    news.setContext(resultSet.getString("Context"));
                    news.setAdd_date(resultSet.getString("Add_date"));
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return news;
    }

    @Override
    public List<News> list5News() {
        List<News> news = new ArrayList<>();
        String sql = "SELECT Nid,Author,Title,Context,Add_date from News order by Add_date";
        int count = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery()){
            while (resultSet.next() && count <5){
                News news1 = new News();
                news1.setNid(resultSet.getInt("Nid"));
                news1.setAuthor(resultSet.getString("Author"));
                news1.setTitle(resultSet.getString("Title"));
                news1.setContext(resultSet.getString("Context"));
                news1.setAdd_date(resultSet.getString("Add_date"));
                news.add(news1);
                count += 1;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return news;
    }

    @Override
    public int DeleteNews(int Nid) {
        String sql = "DELETE FROM News where Nid=?";
        int flag = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,Nid);
            flag = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public int InsertNews(String Author,String Title,String Context) {
        String sql = "INSERT INTO News(Nid,Author,Title,Context,Add_date) " +
                " values(?,?,?,?,now())";
        int flag = 0;
        int Nid = Count() + 1;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,Nid);
            statement.setString(2,Author);
            statement.setString(3,Title);
            statement.setString(4,Context);

            flag = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public int UpdateNews(int Nid, String author, String title, String context) {
        String sql = "UPDATE News SET Author=?,Title=?,Context=? where Nid=?";
        int flag = 0;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setString(1,author);
            statement.setString(2,title);
            statement.setString(3,context);
            statement.setInt(4,Nid);

            flag = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<News> QueryNews(String Nid, String Title, String Author) {
        List<News> news = new ArrayList<>();
        SQLUtils sqlUtil = new SQLUtils();
        String sql = "SELECT Nid,Author,Title,Context,Add_date FROM News where 1=1 ";
        sql += sqlUtil.subSQL(Nid,Title, Author);
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
        ){
            while (resultSet.next()){
                News news1 = new News();
                news1.setNid(resultSet.getInt("Nid"));
                news1.setAuthor(resultSet.getString("Author"));
                news1.setTitle(resultSet.getString("Title"));
                news1.setContext(resultSet.getString("Context"));
                news1.setAdd_date(resultSet.getString("Add_date"));
                news.add(news1);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return news;
    }

    public static int Count(){
        String sql = "SELECT count(*) as Count FROM News";
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
