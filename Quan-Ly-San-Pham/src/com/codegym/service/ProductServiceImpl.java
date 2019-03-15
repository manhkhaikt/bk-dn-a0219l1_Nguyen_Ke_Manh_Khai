package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "bút bi", "3000", "Xanh", "Thiên Long"));
        products.put(2, new Product(2, "vở", "7000", "96 trang", "Kim Đồng"));
        products.put(3, new Product(3, "Toán", "25000", "Sách Giáo Khoa", "Giáo Dục"));
        products.put(4, new Product(4, "bút chì", "3000", "Đen", "Thiên Long"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
