package com.company.meeting_planner.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.Salle;

@Repository
public interface SalleRepository extends JpaRepository<Salle, Long> {
	
}
