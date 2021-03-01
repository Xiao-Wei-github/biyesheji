package cn.edu.glut.jiudian.controller;

import cn.edu.glut.jiudian.entity.Admin;
import cn.edu.glut.jiudian.entity.User;
import cn.edu.glut.jiudian.service.LoginService;
import cn.edu.glut.jiudian.service.UserService;
import cn.edu.glut.jiudian.service.impl.PasswordMdifyServiceImpl;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.sql.Types.NULL;

/**
 * @author stone(huangshizhang) at 2019-06-12 11:24
 */
@Controller
public class adminController {
    //ddddd
    private UserService userService;
    @Autowired
    PasswordMdifyServiceImpl passwordMdifyService;
    @Autowired
    LoginService loginService;

    @RequestMapping("password_modify.html")
    public ModelAndView passwordModify(){
        return new ModelAndView("password_modify");
    }

    @RequestMapping("passwordMdify")
    @ResponseBody
    public Object passwordMdify(@RequestParam("adminName") String adminName,@RequestParam("adminPwd") String adminPwd,@RequestParam("password") String password) {
        Admin admin1 = loginService.selectAdmin(adminName, password);
        Admin admin = new Admin();
        admin.setAdminName(adminName);
        admin.setAdminPwd(adminPwd);
        Map res = new HashMap();
        if (admin1 == null) {
            res.put("stateCode", "0");
        } else {
            boolean result = passwordMdifyService.modifyPassword(admin);
            if (result) {
                res.put("stateCode", "1");
            } else {
                res.put("stateCode", "0");
            }

        }
        return res;
    }

    @RequestMapping("admin_add.html")
    public ModelAndView adminAdd(){return new ModelAndView("admin_add");}

    @RequestMapping("adminAdd")
    @ResponseBody
    public Object adminAdd(@RequestParam("adminName") String adminName,@RequestParam("password") String password){
        Admin admin = new Admin();
        admin.setAdminPwd(password);
        admin.setAdminName(adminName);
        Map res = new HashMap();
        if (passwordMdifyService.checkAdmin(admin) == null){
            if (passwordMdifyService.addAdmin(admin)){
                res.put("stateCode", "1");   //注册成功
            }else {
                res.put("stateCode", "0");   //用户注册失败
            }
        }else {
            res.put("stateCode", "2");   //用户已存在
        }
        return res;
    }
}
