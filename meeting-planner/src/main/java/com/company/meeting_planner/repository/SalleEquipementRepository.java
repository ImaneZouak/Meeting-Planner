package com.company.meeting_planner.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.Salle;
import com.company.meeting_planner.model.SalleEquipement;

@Repository
public interface SalleEquipementRepository extends JpaRepository<SalleEquipement, Long> {
	
	// filtrer par salle tout les equipements que la salle possède
	List<SalleEquipement> findBySalle(Salle salle);
}