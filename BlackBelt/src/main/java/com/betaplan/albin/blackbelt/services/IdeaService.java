package com.betaplan.albin.blackbelt.services;

import com.betaplan.albin.blackbelt.models.Idea;
import com.betaplan.albin.blackbelt.repositories.IdeaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class IdeaService {
    private final IdeaRepository ideaRepository;

    public IdeaService(IdeaRepository ideaRepository) {
        this.ideaRepository = ideaRepository;
    }

    public Idea createIdea(Idea idea) {
        return ideaRepository.save(idea);
    }

    public List<Idea> findAllIdeas() {
        return ideaRepository.findAll();
    }

    public Idea findIdeaById(Long id) {
        Optional<Idea> u = ideaRepository.findById(id);

        if (u.isPresent()) {
            return u.get();
        } else {
            return null;
        }
    }

}