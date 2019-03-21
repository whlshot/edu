package com.ken.service.impl;

import com.ken.entity.User;
import com.ken.entity.common.Account;
import com.ken.service.IAccountService;
import com.ken.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author yhq
 * @date 2019/3/21
 */
@Service
public class AccountServiceImpl implements IAccountService {

    @Autowired
    private IUserService userService;

    @Override
    public void saveAccount(Account account) {
        User user=new User();
    }

    @Override
    public void saveAccount(Integer schoolId, Account account) {
        User user = new User();
        userService.saveUser(user);
    }

}
