package com.pack.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.pack.model.Login;
@Repository
public interface EmployeeRepository extends JpaRepository<Login,Long> {
	Optional<Login> findByName(String name);
}
