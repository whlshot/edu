package com.ken.service;

import com.ken.entity.common.Account;

public interface IAccountService {

    void saveAccount(Account account);

    void saveAccount(Integer schoolId, Account account);

}
