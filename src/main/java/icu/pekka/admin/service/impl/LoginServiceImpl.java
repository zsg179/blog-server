package icu.pekka.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import icu.pekka.admin.service.LoginService;
import icu.pekka.commons.dao.AdminDao;
import icu.pekka.commons.entity.AdminEntity;
import icu.pekka.commons.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Auther :朱树广
 * @Date :2020/8/30
 * @Description :icu.pekka.admin.service.impl
 * @Version :1.0
 */
@Service
public class LoginServiceImpl extends ServiceImpl<AdminDao, AdminEntity> implements LoginService {
    @Autowired
    private AdminDao adminDao;
    @Override
    public R login(AdminEntity adminEntity) {
        AdminEntity admin = adminDao.selectOne(new QueryWrapper<AdminEntity>().eq("admin_name", adminEntity.getAdminName()));
        if (admin == null) {
            return R.error("账号不存在");
        }
        return R.ok();
    }
}
