package com.springcrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcrud.entity.Product;

@Service
public class ProductService {
	@Autowired
	private ProductRepo repo;

	public List<Product> listall() {
		return repo.findAll();

	}

	public void save(Product product) {
		repo.save(product);
	}

	public Product returnByID(int id) {
        return repo.findById(id).get();
	}
	public void  delete(int id)
	{
		repo.deleteById(id);
	}
	
}
