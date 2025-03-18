package com.company.meeting_planner.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.EquipementMobile;

@Repository
public interface EquipementMobileRepository extends JpaRepository<EquipementMobile, Long> {
	
}
