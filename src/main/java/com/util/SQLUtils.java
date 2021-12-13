package com.util;

/*
改实体用于实现组合SQL语句以及判断是否传入为空
 */
public class SQLUtils {
    private SQLUtils sqlUtils;

    public static boolean validate(String input) {
        boolean flag = true;
        if ("".equals(input)) {
            flag = false;
        }
        if (null == input) {
            flag = false;
        }
        return flag;
    }
    /*
    For News
     */
    public String subSQL(String Nid,String Title,String Author) {
        String subSQL = " ";
        boolean flagNid = sqlUtils.validate(Nid);
        if (true == flagNid) {
            subSQL += " and Nid = " + Nid + " ";
        }
        boolean flagTitle = sqlUtils.validate(Title);
        if (true == flagTitle) {
            subSQL += " and Title = '" + Title + "' ";
        }
        boolean flagAuthor = sqlUtils.validate(Author);
        if (true == flagAuthor) {
            subSQL += " and  Author = '" + Author +"' ";
        }

        return subSQL;
    }
    /*
    For Announcement
     */
    public String subSQL(String Aid,String Title) {
        String subSQL = " ";
        boolean flagAid = sqlUtils.validate(Aid);
        if (true == flagAid) {
            subSQL += " and Aid = " + Aid + " ";
        }
        boolean flagTitle = sqlUtils.validate(Title);
        if (true == flagTitle) {
            subSQL += " and Title = '" + Title + "' ";
        }

        return subSQL;
    }
}
