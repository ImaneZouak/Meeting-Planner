package com.company.meeting_planner.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.Reunion;

@Repository
public interface ReunionRepository extends JpaRepository<Reunion, Long> {
	
}
