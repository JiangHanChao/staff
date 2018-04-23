package com.hnluchuan.staff.enums;

public enum EmployeeMarryStatus {
    Status1(1, "未婚"),
    Status2(2, "已婚"),
    Status3(3, "离异"),
    Status4(4, "丧偶");

    private int value;
    private String remark;

    private EmployeeMarryStatus(int value, String remark) {
        this.value = value;
        this.remark = remark;
    }

    public int getValue() {
        return value;
    }
    public String getRemark() {
        return remark;
    }

    public static EmployeeMarryStatus getByValue(int value) {
        for (EmployeeMarryStatus o : EmployeeMarryStatus.values()) {
            if (o.getValue() == value) {
                return o;
            }
        }
        return null;
    }
}
