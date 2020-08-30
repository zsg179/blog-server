package icu.pekka.blog.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import icu.pekka.commons.entity.ArticleEntity;
import icu.pekka.blog.service.ArticleService;
import icu.pekka.commons.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/getHBlogs")
    @ResponseBody
    public R getHBlogs(@RequestParam Integer currentPage,@RequestParam Integer tagId,@RequestParam Integer pageSize) {
        IPage<ArticleEntity> hBlogs = articleService.getHBlogs(currentPage, tagId, pageSize);
        return R.ok().put("hBlogsData", hBlogs);
    }
}
