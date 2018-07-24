package com.cg.mypaymentapp.repo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cg.mypaymentapp.beans.Transaction;
import com.cg.mypaymentapp.beans.Customer;
import com.cg.mypaymentapp.exception.InvalidInputException;

public interface WalletRepo extends JpaRepository<Customer, String>
{
	
	@Query("SELECT c from Customer c where c.wallet.balance<=?1")
	public List<Customer> findCustomer(BigDecimal amount);
	
	
	
}
