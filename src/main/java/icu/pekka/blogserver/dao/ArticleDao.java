package icu.pekka.blogserver.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import icu.pekka.blogserver.entity.ArticleEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ArticleDao extends BaseMapper<ArticleEntity> {
}
