package com.betaplan.albin.blackbelt.repositories;

import com.betaplan.albin.blackbelt.models.Idea;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IdeaRepository extends CrudRepository<Idea, Long>{
    List<Idea> findAll();

}