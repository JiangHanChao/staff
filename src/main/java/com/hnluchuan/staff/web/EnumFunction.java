package com.hnluchuan.staff.web;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.MessageFormat;


public class EnumFunction {
    private static String basePackgeDetail = "com.hnluchuan.staff.enums";
    private static String basePackgeList = "com.hnluchuan.staff.common";

    public static String parseForList(String name, Integer value) {
        String className = basePackgeList + "." + name;
        Class clz = null;
        try {
            clz = Class.forName(className);
        }catch (ClassNotFoundException e){
            className = basePackgeDetail + "." + name;
        }
        try {
            clz = Class.forName(className);
            Method values = clz.getMethod("values");
            Object[] enums = (Object[]) values.invoke(null);
            for (Object e : enums) {
                int eValue = (Integer) e.getClass().getMethod("getValue").invoke(e);
                String remark = (String) e.getClass().getMethod("getRemark").invoke(e);
                if (eValue == value) {
                    return remark;
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SecurityException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println("log -------------------- EnumFunction-> parseForList-> error");
        return "ERROR";
    
    }
    
    public static String parseForDetail(String packageName, String name, Integer value) {
        String className = basePackgeDetail + "." + packageName;
        Class clz = null;
        try {
            clz = Class.forName(className);
        }catch (ClassNotFoundException e){
            className = basePackgeList + "." + packageName;
        }
        try {
            clz = Class.forName(className);
            Method values = clz.getMethod("values");
            Object[] enums = (Object[]) values.invoke(null);
            String html = "<select class=\"form-control\" name=\"" + name + "\">";
            for (Object e : enums) {
                int eValue = (Integer) e.getClass().getMethod("getValue").invoke(e);
                String remark = (String) e.getClass().getMethod("getRemark").invoke(e);
                
                String option = "<option value=\"{0}\" {1}>{2}</option>";
                option = MessageFormat.format(option, eValue, (value == null || eValue != value ? "" : "selected") , remark);
                html += option;
            }
            html += "</select>";
            return html;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SecurityException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println("log -------------------- EnumFunction-> parseForDetail-> error");
        return "ERROR";
    }
}
