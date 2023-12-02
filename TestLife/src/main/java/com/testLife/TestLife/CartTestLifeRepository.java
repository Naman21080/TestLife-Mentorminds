package com.testLife.TestLife;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface CartTestLifeRepository extends CrudRepository<Cart,Integer>{
	int countByCartId(int id);
	List<Cart> findAllById_id(int id);	
}
