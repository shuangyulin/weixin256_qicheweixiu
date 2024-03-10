package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 车辆信息
 *
 * @author 
 * @email
 */
@TableName("cheliang")
public class CheliangEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public CheliangEntity() {

	}

	public CheliangEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 车牌号
     */
    @TableField(value = "cheliang_uuid_number")

    private String cheliangUuidNumber;


    /**
     * 品牌
     */
    @TableField(value = "cheliang_types")

    private Integer cheliangTypes;


    /**
     * 图片
     */
    @TableField(value = "cheliang_photo")

    private String cheliangPhoto;


    /**
     * 车型号
     */
    @TableField(value = "cheliang_xinghao")

    private String cheliangXinghao;


    /**
     * 颜色
     */
    @TableField(value = "cheliang_yanse")

    private String cheliangYanse;


    /**
     * 用户
     */
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 车辆详情
     */
    @TableField(value = "news_content")

    private String newsContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：车牌号
	 */
    public String getCheliangUuidNumber() {
        return cheliangUuidNumber;
    }
    /**
	 * 获取：车牌号
	 */

    public void setCheliangUuidNumber(String cheliangUuidNumber) {
        this.cheliangUuidNumber = cheliangUuidNumber;
    }
    /**
	 * 设置：品牌
	 */
    public Integer getCheliangTypes() {
        return cheliangTypes;
    }
    /**
	 * 获取：品牌
	 */

    public void setCheliangTypes(Integer cheliangTypes) {
        this.cheliangTypes = cheliangTypes;
    }
    /**
	 * 设置：图片
	 */
    public String getCheliangPhoto() {
        return cheliangPhoto;
    }
    /**
	 * 获取：图片
	 */

    public void setCheliangPhoto(String cheliangPhoto) {
        this.cheliangPhoto = cheliangPhoto;
    }
    /**
	 * 设置：车型号
	 */
    public String getCheliangXinghao() {
        return cheliangXinghao;
    }
    /**
	 * 获取：车型号
	 */

    public void setCheliangXinghao(String cheliangXinghao) {
        this.cheliangXinghao = cheliangXinghao;
    }
    /**
	 * 设置：颜色
	 */
    public String getCheliangYanse() {
        return cheliangYanse;
    }
    /**
	 * 获取：颜色
	 */

    public void setCheliangYanse(String cheliangYanse) {
        this.cheliangYanse = cheliangYanse;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }
    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：车辆详情
	 */
    public String getNewsContent() {
        return newsContent;
    }
    /**
	 * 获取：车辆详情
	 */

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Cheliang{" +
            "id=" + id +
            ", cheliangUuidNumber=" + cheliangUuidNumber +
            ", cheliangTypes=" + cheliangTypes +
            ", cheliangPhoto=" + cheliangPhoto +
            ", cheliangXinghao=" + cheliangXinghao +
            ", cheliangYanse=" + cheliangYanse +
            ", yonghuId=" + yonghuId +
            ", newsContent=" + newsContent +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
