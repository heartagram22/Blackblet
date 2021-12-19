package com.betaplan.albin.blackbelt.repositories;

import com.betaplan.albin.blackbelt.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findByEmail(String email);

}

