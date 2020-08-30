package icu.pekka.commons.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @Auther :朱树广
 * @Date :2020/8/30
 * @Description :icu.pekka.commons.entity
 * @Version :1.0
 */
@Data
@TableName("admin")
public class AdminEntity {
    @TableId
    private Long id;
    private String adminName;
    private String adminPassword;
    private Date created;

    @Override
    public String toString() {
        return "AdminEntity{" +
                "id=" + id +
                ", adminName='" + adminName + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", created=" + created +
                '}';
    }
}
