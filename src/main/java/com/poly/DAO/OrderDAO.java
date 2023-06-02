package com.poly.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Order;

public interface OrderDAO extends JpaRepository<Order, Long>{
	@Query("select o from Order o where o.account.username like ?1")
	List<Order> findByUsername(String username);
}
