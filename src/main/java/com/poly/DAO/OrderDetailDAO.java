package com.poly.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
	@Query("select o from OrderDetail o where o.product.id = ?1")
	OrderDetail findByProductId(Integer id);
	@Query("select o from OrderDetail o where o.order.account.username like ?1")
	List<OrderDetail> findAllByUsername(String username);
}
