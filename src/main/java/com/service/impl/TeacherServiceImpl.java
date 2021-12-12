package com.service.impl;

import com.entity.Teacher;
import com.listener.DataSourceUtils;
import com.service.TeacherService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class TeacherServiceImpl implements TeacherService {
    private static Logger logger = Logger.getLogger(TeacherService.class
            .getName());
    @Override
    public List<Teacher> listTeachers(){
        List<Teacher> teachers = new ArrayList<>();
        String sql = "SELECT * FROM Teacher";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery()){
            while (resultSet.next()){
                Teacher teacher = new Teacher(resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("title"),
                        resultSet.getString("introduce"));
                teachers.add(teacher);
            }
        } catch (SQLException e){
            logger.warning(e.getMessage());
        }
        return teachers;
    }

    @Override
    public void addTeacher(int id,String name,String title,String introduce){
        Teacher teacher = null;
        String sql = "INSERT INTO Teacher values(?,?,?,?)";
        try(Connection connection = DataSourceUtils.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,id);
            statement.setString(2,name);
            statement.setString(3,title);
            statement.setString(4,introduce);
            statement.executeUpdate();
        } catch (SQLException e){
            logger.warning(e.getMessage());
        }
    }

    @Override
    public Teacher getTeacher(int id){
        Teacher teacher = null;
        String sql = "SELECT * FROM Teacher where id=?";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setInt(1,id);
            try(ResultSet resultSet = statement.executeQuery()){
                while (resultSet.next()){
                    teacher = new Teacher(resultSet.getInt("id"),
                            resultSet.getString("name"),
                            resultSet.getString("title"),
                            resultSet.getString("introduce"));
                }
            }
        } catch (SQLException e){
            logger.warning(e.getMessage());
        }
        return teacher;
    }

    @Override
    public List<Teacher> getTeachersByTitle(String Title){
        List<Teacher> teachers = new ArrayList<>();
        String sql = "SELECT * FROM Teacher WHERE title=?";
        try(Connection connection = DataSourceUtils.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setString(1,Title);
            try(ResultSet resultSet = statement.executeQuery()){
                while (resultSet.next()){
                    Teacher teacher = new Teacher(resultSet.getInt("id"),
                            resultSet.getString("name"),
                            resultSet.getString("title"),
                            resultSet.getString("introduce"));
                    teachers.add(teacher);
                }
            }
        } catch (SQLException e){
            logger.warning(e.getMessage());
        }
        return teachers;
    }
}
