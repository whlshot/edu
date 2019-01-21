package com.ken.service.impl;

import com.ken.entity.School;
import com.ken.mapper.SchoolMapper;
import com.ken.service.ISchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author yhq
 * @date 2019/1/21
 */
@Service
public class SchoolServiceImpl implements ISchoolService {

    @Autowired
    private SchoolMapper schoolMapper;


    @Override
    public boolean saveSchool(School school) {
        return schoolMapper.insertSchool(school);
    }

    @Override
    public boolean delSchool(Integer id) {
        return schoolMapper.delSchool(id);
    }

    @Override
    public boolean updateSchool(School school) {
        return schoolMapper.updateSchool(school);
    }

    @Override
    public School getSchool(Integer id) {
        return schoolMapper.selectSchoolById(id);
    }
}
