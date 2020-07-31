package icu.pekka.blogserver.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("article")
public class ArticleEntity implements Serializable {

    @TableId
    private Long id;
    /**
     * 发表用户id
     */
    private Long userId;
    /**
     * 分类id
     */
    private Long tagId;
    /**
     * 标题
     */
    private String title;
    /**
     * 摘要
     */
    private String summary;
    /**
     * 博客封面图片地址
     */
    private String img;
    /**
     * 博客内容
     */
    private String content;
    /**
     * 浏览量
     */
    private Long views;
    /**
     * 评论总数
     */
    private Long comments;
    /**
     * 点赞量
     */
    private Long likes;
    /**
     * 博客状态
     */
    private int status;
    /**
     * 是否为轮播图
     */
    private int isCarousel;
    /**
     * 是否为推荐文章
     */
    private int isRecommend;
    /**
     * 发表时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date created;
    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date updated;

}
