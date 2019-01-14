package com.ken.service.impl;

import com.ken.entity.Student;
import com.ken.mapper.StudentMapper;
import com.ken.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author yhq
 * @date 2019/1/14
 */
@Service
public class StudentServiceImpl implements IStudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> getAllStudent() {
        Student student = studentMapper.selectById(1);
        List<Student> list = new ArrayList<>();
        list.add(student);
        return list;
    }

    @Override
    public Student getOneStudent() {
        return studentMapper.selectById(1);
    }

}
