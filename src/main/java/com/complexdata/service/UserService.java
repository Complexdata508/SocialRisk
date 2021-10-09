package com.complexdata.service;

import com.complexdata.model.City;
import com.complexdata.model.User;
import com.github.pagehelper.PageInfo;

public interface UserService {
    public PageInfo<User> getAllUserinfo(int pageNum, int size);
    int getUserCount();

    void addUser(User user);
    void deleteUser(String uid);
}
