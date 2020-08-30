package icu.pekka.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import icu.pekka.commons.entity.AdminEntity;
import icu.pekka.commons.utils.R;

/**
 * @Auther :朱树广
 * @Date :2020/8/30
 * @Description :icu.pekka.admin.service
 * @Version :1.0
 */
public interface LoginService extends IService<AdminEntity> {
    R login(AdminEntity adminEntity);
}
