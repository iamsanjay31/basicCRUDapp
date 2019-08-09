package com.springcrud.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springcrud.entity.Product;

public interface ProductRepo extends JpaRepository<Product, Integer> {

}
