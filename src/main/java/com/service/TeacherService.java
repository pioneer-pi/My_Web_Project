package com.service;

import com.entity.Teacher;
/*
该接口用于定于有关Teacher table的一些基础操作.
 */
import java.util.List;

public interface TeacherService {
    /**
     * 查询全部老师
     */
    public List<Teacher> listTeachers();
    /**
     *添加老师
     */
    public void addTeacher(int id,String name,String title,String introduce);
    /**
     * 基于ID查询老师
     */
    public Teacher getTeacher(int Tid);
    /**
     * 基于Title查询老师
     */
    public List<Teacher> getTeachersByTitle(String Title);
}
