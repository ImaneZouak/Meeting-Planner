package com.company.meeting_planner.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.Equipement;

@Repository
public interface EquipementRepository extends JpaRepository<Equipement, Long> {
	
}