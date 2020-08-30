package icu.pekka.admin.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import icu.pekka.admin.service.LoginService;
import icu.pekka.commons.entity.AdminEntity;
import icu.pekka.commons.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @Auther :朱树广
 * @Date :2020/8/30
 * @Description :icu.pekka.admin.controller
 * @Version :1.0
 */
@Controller
@CrossOrigin
@RequestMapping("/admin")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @ResponseBody
    @PostMapping("/login")
    public R login(@RequestBody String json) {
        System.out.println(json);
        AdminEntity adminEntity = JSON.parseObject(json, AdminEntity.class);
        System.out.println(adminEntity.toString());
        return loginService.login(adminEntity);
    }
}
