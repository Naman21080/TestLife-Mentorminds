package com.testLife.TestLife;

import org.springframework.data.repository.CrudRepository;

public interface UsersTestLifeRepository extends CrudRepository<Users,Integer>{
	Users findByEmail(String email);
}
