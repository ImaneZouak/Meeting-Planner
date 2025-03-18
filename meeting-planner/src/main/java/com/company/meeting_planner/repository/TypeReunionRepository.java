package com.company.meeting_planner.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.TypeReunion;

@Repository
public interface TypeReunionRepository extends JpaRepository<TypeReunion, Long> {
	
}