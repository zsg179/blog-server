package icu.pekka.blogserver.service;

import com.baomidou.mybatisplus.extension.service.IService;
import icu.pekka.blogserver.entity.ArticleEntity;

import java.util.List;

public interface ArticleService extends IService<ArticleEntity> {
    List<ArticleEntity> getNBlogs();
}
