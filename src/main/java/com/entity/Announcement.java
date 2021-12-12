package com.entity;

public class Announcement {
    private int Aid;
    private String Title;
    private String Context;
    private String Add_date;

    public Announcement(){

    }
    public Announcement(int aid, String title, String context, String add_date) {
        Aid = aid;
        Title = title;
        Context = context;
        Add_date = add_date;
    }

    public int getAid() {
        return Aid;
    }

    public void setAid(int aid) {
        Aid = aid;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getContext() {
        return Context;
    }

    public void setContext(String context) {
        Context = context;
    }

    public String getAdd_date() {
        return Add_date;
    }

    public void setAdd_date(String add_date) {
        Add_date = add_date;
    }
}
