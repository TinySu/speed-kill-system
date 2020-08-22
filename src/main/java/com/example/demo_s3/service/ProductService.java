package com.example.demo_s3.service;

import com.example.demo_s3.model.AyProduct;

import java.util.Collection;
import java.util.List;

/**
 * 描述：商品接口
 * @author Ay
 * @create 2019/08/17
 **/
public interface ProductService {

    /**
     * 查询所有商品
     * @return
     */
    List<AyProduct> findAll();

    /**
     * 查询所有商品
     * @return
     */
    Collection<AyProduct> findAllCache();

    /**
     * 秒杀商品
     * @param productId 商品id
     * @param userId 用户id
     * @return
     */
    AyProduct killProduct(Integer productId, Integer userId);
}
