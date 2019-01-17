package com.ken.entity;

import com.baomidou.mybatisplus.annotation.TableName;

/**
 * @author yhq
 * @date 2019/1/17
 */
@TableName("edu_school")
public class School {
    private Integer id;
    private String schoolName;
    private String address;
    private Integer schoolCode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getSchoolCode() {
        return schoolCode;
    }

    public void setSchoolCode(Integer schoolCode) {
        this.schoolCode = schoolCode;
    }
}
