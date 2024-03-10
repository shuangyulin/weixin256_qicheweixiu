package com.entity.vo;

import com.entity.WeixiuxiangmuOrderEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 维修订单
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("weixiuxiangmu_order")
public class WeixiuxiangmuOrderVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 订单号
     */

    @TableField(value = "weixiuxiangmu_order_uuid_number")
    private String weixiuxiangmuOrderUuidNumber;


    /**
     * 维修项目
     */

    @TableField(value = "weixiuxiangmu_id")
    private Integer weixiuxiangmuId;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 维修车辆
     */

    @TableField(value = "cheliang_id")
    private Integer cheliangId;


    /**
     * 预约时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "weixiuxiangmu_order_time")
    private Date weixiuxiangmuOrderTime;


    /**
     * 实付价格
     */

    @TableField(value = "weixiuxiangmu_order_true_price")
    private Double weixiuxiangmuOrderTruePrice;


    /**
     * 订单类型
     */

    @TableField(value = "weixiuxiangmu_order_types")
    private Integer weixiuxiangmuOrderTypes;


    /**
     * 订单创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间 show3
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
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
	 * 设置：订单号
	 */
    public String getWeixiuxiangmuOrderUuidNumber() {
        return weixiuxiangmuOrderUuidNumber;
    }


    /**
	 * 获取：订单号
	 */

    public void setWeixiuxiangmuOrderUuidNumber(String weixiuxiangmuOrderUuidNumber) {
        this.weixiuxiangmuOrderUuidNumber = weixiuxiangmuOrderUuidNumber;
    }
    /**
	 * 设置：维修项目
	 */
    public Integer getWeixiuxiangmuId() {
        return weixiuxiangmuId;
    }


    /**
	 * 获取：维修项目
	 */

    public void setWeixiuxiangmuId(Integer weixiuxiangmuId) {
        this.weixiuxiangmuId = weixiuxiangmuId;
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
	 * 设置：维修车辆
	 */
    public Integer getCheliangId() {
        return cheliangId;
    }


    /**
	 * 获取：维修车辆
	 */

    public void setCheliangId(Integer cheliangId) {
        this.cheliangId = cheliangId;
    }
    /**
	 * 设置：预约时间
	 */
    public Date getWeixiuxiangmuOrderTime() {
        return weixiuxiangmuOrderTime;
    }


    /**
	 * 获取：预约时间
	 */

    public void setWeixiuxiangmuOrderTime(Date weixiuxiangmuOrderTime) {
        this.weixiuxiangmuOrderTime = weixiuxiangmuOrderTime;
    }
    /**
	 * 设置：实付价格
	 */
    public Double getWeixiuxiangmuOrderTruePrice() {
        return weixiuxiangmuOrderTruePrice;
    }


    /**
	 * 获取：实付价格
	 */

    public void setWeixiuxiangmuOrderTruePrice(Double weixiuxiangmuOrderTruePrice) {
        this.weixiuxiangmuOrderTruePrice = weixiuxiangmuOrderTruePrice;
    }
    /**
	 * 设置：订单类型
	 */
    public Integer getWeixiuxiangmuOrderTypes() {
        return weixiuxiangmuOrderTypes;
    }


    /**
	 * 获取：订单类型
	 */

    public void setWeixiuxiangmuOrderTypes(Integer weixiuxiangmuOrderTypes) {
        this.weixiuxiangmuOrderTypes = weixiuxiangmuOrderTypes;
    }
    /**
	 * 设置：订单创建时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：订单创建时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间 show3
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间 show3
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
