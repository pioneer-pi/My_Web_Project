package com.entity;

public class Teacher {
    private int id;
    private String name;
    private String title;
    private String introduce;

    public Teacher(){
    }
    public Teacher(int id, String name, String title, String introduce) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.introduce = introduce;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }
}
