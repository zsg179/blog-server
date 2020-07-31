package icu.pekka.blogserver.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import icu.pekka.blogserver.dao.ArticleDao;
import icu.pekka.blogserver.entity.ArticleEntity;
import icu.pekka.blogserver.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleDao, ArticleEntity> implements ArticleService {
    @Autowired
    ArticleDao articleDao;

    @Override
    public List<ArticleEntity> getNBlogs() {
        return articleDao.selectList(new QueryWrapper<ArticleEntity>()
                .eq("status", 1)
                .orderByDesc("created")
                .last("limit 15"));
    }
}
