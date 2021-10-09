package com.complexdata.service.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.crypto.digest.DigestUtil;
import com.complexdata.mapper.UserMapper;
import com.complexdata.model.City;
import com.complexdata.model.User;
import com.complexdata.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    public UserMapper userMapper;
    public PageInfo<User> getAllUserinfo(int pageNum, int size) {
        PageHelper.startPage(pageNum, size);
//        List<City> cities = cityMapper.searchAll();
        List<User> userList = userMapper.select(new User());
        PageInfo<User> UserIfno = new PageInfo<User>(userList);
        return UserIfno;
    }

    @Override
    public int getUserCount() {
        User user=new User();
            int count = userMapper.selectCount(user);
            return count;
    }

    @Override
    public void addUser(User user) {
        String uid = IdUtil.randomUUID();
        user.setUid(uid);
        String password = DigestUtil.md5Hex(user.getPassword());
        user.setPassword(password);
        userMapper.insert(user);
    }

    @Override
    public void deleteUser(String uid) {
        User user=new User();
        user.setUid(uid);
        userMapper.delete(user);
    }
}
