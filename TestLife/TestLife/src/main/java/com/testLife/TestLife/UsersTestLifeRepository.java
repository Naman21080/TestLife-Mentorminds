package com.testLife.TestLife;

import org.springframework.data.repository.CrudRepository;

public interface UsersTestLifeRepository extends CrudRepository<users,Integer>{
	users findByEmail(String email);
}
