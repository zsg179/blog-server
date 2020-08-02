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
    public R getNBlogs() {
        List<ArticleEntity> nBlogsList = articleService.getNBlogs();
        return R.ok().put("newestBlogs", nBlogsList);
    }

    @GetMapping("/getCBlogs")
    @ResponseBody
    public R getCBlogs() {
        List<ArticleEntity> cBlogsList = articleService.getCBlogs();
        return R.ok().put("carouselBlogs", cBlogsList);
    }

    @GetMapping("/getRBlogs")
    @ResponseBody
    public R getRBlogs() {
        List<ArticleEntity> rBlogsList = articleService.getRBlogs();
        return R.ok().put("recommendBlogs", rBlogsList);
    }
}
