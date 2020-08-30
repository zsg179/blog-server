package icu.pekka.commons.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import icu.pekka.commons.entity.AdminEntity;
import org.apache.ibatis.annotations.Mapper;

/**
 * @Auther :朱树广
 * @Date :2020/8/30
 * @Description :icu.pekka.commons.dao
 * @Version :1.0
 */
@Mapper
public interface AdminDao extends BaseMapper<AdminEntity> {
}
