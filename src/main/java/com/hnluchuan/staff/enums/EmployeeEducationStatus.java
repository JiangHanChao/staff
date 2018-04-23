package com.hnluchuan.staff.enums;

/**
 *   员工学历：1.高中 2.本科 3.硕士 4.博士
 */
public enum  EmployeeEducationStatus {
    Status1(1, "高中"),
    Status2(2, "本科"),
    Status3(3, "硕士"),
    Status4(4, "博士");

    private int value;
    private String remark;

    private EmployeeEducationStatus(int value, String remark) {
        this.value = value;
        this.remark = remark;
    }

    public int getValue() {
        return value;
    }
    public String getRemark() {
        return remark;
    }

    public static EmployeeEducationStatus getByValue(int value) {
        for (EmployeeEducationStatus o : EmployeeEducationStatus.values()) {
            if (o.getValue() == value) {
                return o;
            }
        }
        return null;
    }
}
