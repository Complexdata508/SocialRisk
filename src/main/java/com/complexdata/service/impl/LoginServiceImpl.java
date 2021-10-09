package com.complexdata.service.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.crypto.digest.DigestUtil;
import com.complexdata.mapper.UserMapper;
import com.complexdata.model.User;
import com.complexdata.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public boolean userLogin(User user) {
        User searchUser = new User();
        searchUser.setUsername(user.getUsername());
        User getUser = userMapper.selectOne(searchUser);
        if(getUser==null) {
            System.out.println("未查询到相关用户");
            return false;
        }

        if(getUser.getPassword().equals(DigestUtil.md5Hex(user.getPassword())))//判断密码是否相同
            return true;

        return false;
    }

    @Override
    public boolean userRegister(User user) {
        String registerUsername = user.getUsername();
        User searchConditionUser = new User();
        searchConditionUser.setUsername(registerUsername);
        User getUser  = userMapper.selectOne(searchConditionUser);
        if(getUser!=null)
            return false;
        User insertUser = new User();
        String uid = IdUtil.randomUUID();
        String password  = DigestUtil.md5Hex(user.getPassword());

        insertUser.setUsername(user.getUsername());
        insertUser.setUid(uid);
        insertUser.setPassword(password);
//      注册的用户设置为普通用户
        insertUser.setAdmin(0);

        userMapper.insert(insertUser);
        return true;
    }
}
