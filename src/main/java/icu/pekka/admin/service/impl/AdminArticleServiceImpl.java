package icu.pekka.admin.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;


import icu.pekka.admin.service.AdminArticleService;
import icu.pekka.commons.dao.ArticleDao;
import icu.pekka.commons.entity.ArticleEntity;
import icu.pekka.commons.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @Auther :朱树广
 * @Date :2020/9/20
 * @Description :icu.pekka.admin.service.impl
 * @Version :1.0
 */
@Service
public class AdminArticleServiceImpl extends ServiceImpl<ArticleDao, ArticleEntity> implements AdminArticleService {
   @Autowired
   private ArticleDao articleDao;
    @Override
    public R CreateArticle(ArticleEntity article) {
        ArticleEntity articleEntity = new ArticleEntity();
        BeanUtil.copyProperties(article,articleEntity);
        articleEntity.setCreated(new Date());
        articleEntity.setUpdated(new Date());
        try {
            articleDao.insert(articleEntity);
            return R.ok().put("status",article.getStatus()+"");
        } catch (Exception e) {
            return R.error("文章创建异常").put("status",article.getStatus()+"");
        }
    }
}
