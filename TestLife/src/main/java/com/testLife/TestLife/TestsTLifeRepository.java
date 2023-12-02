package com.testLife.TestLife;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface TestsTLifeRepository extends CrudRepository<Tests,Integer>{
			List<Tests> findAllByCategory(String category);
}
