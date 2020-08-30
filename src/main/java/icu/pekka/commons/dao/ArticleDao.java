package icu.pekka.commons.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import icu.pekka.commons.entity.ArticleEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ArticleDao extends BaseMapper<ArticleEntity> {
}
