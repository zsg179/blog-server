package icu.pekka.admin.controller;

import com.alibaba.fastjson.JSON;
import icu.pekka.admin.service.AdminArticleService;
import icu.pekka.commons.entity.ArticleEntity;
import icu.pekka.commons.utils.R;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @Auther :朱树广
 * @Date :2020/9/20
 * @Description :icu.pekka.admin.controller
 * @Version :1.0
 */
@Controller
@RequestMapping("/admin")
@CrossOrigin
@Slf4j
public class AdminArticleController {
    @Autowired
    private AdminArticleService adminArticleService;

    @PostMapping("/article/create")
    @ResponseBody
    public R Create(@RequestBody String json) {
        log.info("收到'创建文章'请求报文；"+json);
        ArticleEntity article = JSON.parseObject(json, ArticleEntity.class);
        R res = adminArticleService.CreateArticle(article);

        if (res.get("code").equals(200)) {
            if(res.get("status").equals("0")){
                log.info("文章保存成功");
            }else {
                log.info("文章创建成功");
            }
        } else {
            if(res.get("status").equals("0")){
                log.info("文章保存异常");
            }else {
                log.info("文章创建异常");
            }
        }
        return res;
    }
}
