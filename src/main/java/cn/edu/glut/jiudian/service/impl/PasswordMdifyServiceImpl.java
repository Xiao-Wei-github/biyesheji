package cn.edu.glut.jiudian.service.impl;

import cn.edu.glut.jiudian.dao.AdminMapper;
import cn.edu.glut.jiudian.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("passwordModifyService")
public class PasswordMdifyServiceImpl {
    @Autowired
    AdminMapper adminMapper;
    public boolean modifyPassword(Admin admin){return adminMapper.updatePassword(admin);}

    public Admin checkAdmin(Admin admin){
        return adminMapper.adminCheck(admin);
    }

    public boolean addAdmin(Admin admin){
        return adminMapper.addAdmin(admin);
    }
}
