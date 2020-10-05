package icu.pekka.admin.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import icu.pekka.admin.service.LoginService;
import icu.pekka.commons.entity.AdminEntity;
import icu.pekka.commons.utils.R;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class LoginController {

    @Autowired
    private LoginService loginService;

    @ResponseBody
    @PostMapping("/login")
    public R login(@RequestBody String json) {
        log.info("收到'登录'请求报文；"+json);
        AdminEntity adminEntity = JSON.parseObject(json, AdminEntity.class);
        R res = loginService.login(adminEntity);
        log.info("/login响应报文："+JSON.toJSONString(res));
        return res;
    }

    @ResponseBody
    @GetMapping("/adminInfo")
    public R getAdminInfo(@RequestParam String token) {
        log.info("收到/adminInfo请求报文："+token);
        R res = loginService.getAdminInfo(token);
        log.info("/adminInfo响应报文："+JSON.toJSONString(res));
        return res;
    }

    @ResponseBody
    @PostMapping("/logout")
    public R logout() {
        log.info("收到/logout请求报文");
        return R.ok();
    }

}
