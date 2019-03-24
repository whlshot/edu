package com.ken.service;

import com.ken.entity.common.Account;

public interface IAccountService {

    void saveAccount(Account account);

    void saveAccount(Integer schoolId, Account account);

    Account getAccountByEmail(String loginName);

    Account getAccountByPhone(String loginName);

    Account getAccountByLoginName(String loginName, String password);
}
