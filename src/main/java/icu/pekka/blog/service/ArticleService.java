package icu.pekka.blog.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import icu.pekka.commons.entity.ArticleEntity;

import java.util.List;

public interface ArticleService extends IService<ArticleEntity> {
    /**
     * 最新博客
     * @return
     */
    List<ArticleEntity> getNBlogs();

    /**
     * 轮播图
     * @return
     */
    List<ArticleEntity> getCBlogs();

    /**
     * 推荐博客
     * @return
     */
    List<ArticleEntity> getRBlogs();

    IPage<ArticleEntity> getHBlogs(Integer currentPage, Integer tagId,Integer pageSize);
}
