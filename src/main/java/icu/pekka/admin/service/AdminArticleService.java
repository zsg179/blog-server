package icu.pekka.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import icu.pekka.commons.entity.ArticleEntity;
import icu.pekka.commons.utils.R;

/**
 * @Auther :朱树广
 * @Date :2020/9/20
 * @Description :icu.pekka.admin.service
 * @Version :1.0
 */
public interface AdminArticleService extends IService<ArticleEntity> {
    R CreateArticle(ArticleEntity articleEntity);
}
