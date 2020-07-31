package icu.pekka.blogserver.controller;

import icu.pekka.blogserver.entity.ArticleEntity;
import icu.pekka.blogserver.service.ArticleService;
import icu.pekka.blogserver.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/blog")
@CrossOrigin
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @GetMapping("/getNBlogs")
    @ResponseBody
    public String getNBlogs() {
        List<ArticleEntity> nBlogsList = articleService.getNBlogs();
        return R.ok(nBlogsList);
        System.out.println(nBlogsList);
    }
}
