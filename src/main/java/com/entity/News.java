package com.entity;

public class News {
    private int Nid;
    private String Author;
    private String Title;
    private String Context;
    private String Add_date;

    public News(){

    }
    public News(int Nid, String author, String title, String context, String add_date) {
        Nid = Nid;
        Author = author;
        Title = title;
        Context = context;
        Add_date = add_date;
    }

    public int getNid() {
        return Nid;
    }

    public void setNid(int nid) {
        Nid = nid;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        Author = author;
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
