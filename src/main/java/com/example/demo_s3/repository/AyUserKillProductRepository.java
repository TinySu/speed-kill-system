package com.example.demo_s3.repository;

import com.example.demo_s3.model.AyUserKillProduct;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * 描述：用户秒杀商品记录Repository
 * @author Ay
 * @create 2019/08/17
 **/
public interface AyUserKillProductRepository extends JpaRepository<AyUserKillProduct,Integer> {

}
