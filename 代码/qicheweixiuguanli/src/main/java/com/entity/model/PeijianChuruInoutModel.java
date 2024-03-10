package com.entity.model;

import com.entity.PeijianChuruInoutEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 出入库
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class PeijianChuruInoutModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 出入库流水号
     */
    private String peijianChuruInoutUuidNumber;


    /**
     * 出入库名称
     */
    private String peijianChuruInoutName;


    /**
     * 出入库类型
     */
    private Integer peijianChuruInoutTypes;


    /**
     * 备注
     */
    private String peijianChuruInoutContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：出入库流水号
	 */
    public String getPeijianChuruInoutUuidNumber() {
        return peijianChuruInoutUuidNumber;
    }


    /**
	 * 设置：出入库流水号
	 */
    public void setPeijianChuruInoutUuidNumber(String peijianChuruInoutUuidNumber) {
        this.peijianChuruInoutUuidNumber = peijianChuruInoutUuidNumber;
    }
    /**
	 * 获取：出入库名称
	 */
    public String getPeijianChuruInoutName() {
        return peijianChuruInoutName;
    }


    /**
	 * 设置：出入库名称
	 */
    public void setPeijianChuruInoutName(String peijianChuruInoutName) {
        this.peijianChuruInoutName = peijianChuruInoutName;
    }
    /**
	 * 获取：出入库类型
	 */
    public Integer getPeijianChuruInoutTypes() {
        return peijianChuruInoutTypes;
    }


    /**
	 * 设置：出入库类型
	 */
    public void setPeijianChuruInoutTypes(Integer peijianChuruInoutTypes) {
        this.peijianChuruInoutTypes = peijianChuruInoutTypes;
    }
    /**
	 * 获取：备注
	 */
    public String getPeijianChuruInoutContent() {
        return peijianChuruInoutContent;
    }


    /**
	 * 设置：备注
	 */
    public void setPeijianChuruInoutContent(String peijianChuruInoutContent) {
        this.peijianChuruInoutContent = peijianChuruInoutContent;
    }
    /**
	 * 获取：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：添加时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
