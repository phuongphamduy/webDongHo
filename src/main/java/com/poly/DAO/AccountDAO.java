package com.poly.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
	@Query("select o from Account o where o.email like ?1 and activated = 0")
	Account findByEmail(String email);
}
