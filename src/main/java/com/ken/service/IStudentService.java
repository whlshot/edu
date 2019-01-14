package com.ken.service;

import com.ken.entity.Student;

import java.util.List;

public interface IStudentService extends IBaseService<Student> {

    List<Student> getAllStudent();

    Student getOneStudent();
}
