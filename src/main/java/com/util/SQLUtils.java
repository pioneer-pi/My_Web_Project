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

    public String subSQL(String Nid,String Title,String Author) {
        String subSQL = " ";
        boolean flagGid = sqlUtils.validate(Nid);
        if (true == flagGid) {
            subSQL += " and Nid = " + Nid + " ";
        }
        boolean flagGname = sqlUtils.validate(Title);
        if (true == flagGname) {
            subSQL += " and Title = '" + Title + "' ";
        }
        boolean flagGtype = sqlUtils.validate(Author);
        if (true == flagGtype) {
            subSQL += " and  Author = '" + Author +"' ";
        }

        return subSQL;
    }
}
