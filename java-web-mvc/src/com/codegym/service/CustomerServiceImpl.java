package com.codegym.service;

import com.codegym.model.Customer;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {

    private static Map<Integer,Customer> customers;
    static{
        customers = new HashMap<>();
        customers.put(1,new Customer(1,"Manh Khai","manhkhai98@gmail.com","Kon Tum"));
        customers.put(2,new Customer(2,"Manh Dung","manhdung98na@gmail.com","Nghe An"));
        customers.put(3,new Customer(3,"Quoc Thanh","nguyenquocthanh@gmail.com","Da Nang"));
        customers.put(4,new Customer(4,"Dinh Truong","dinhtruong@gmail.com","Ha Tinh"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
