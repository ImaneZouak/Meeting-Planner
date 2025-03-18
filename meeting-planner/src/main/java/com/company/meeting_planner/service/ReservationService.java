package com.company.meeting_planner.service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.meeting_planner.model.Equipement;
import com.company.meeting_planner.model.Reservation;
import com.company.meeting_planner.model.Reunion;
import com.company.meeting_planner.model.Salle;
import com.company.meeting_planner.model.SalleEquipement;
import com.company.meeting_planner.model.TypeReunion;
import com.company.meeting_planner.repository.EquipementRepository;
import com.company.meeting_planner.repository.ReservationRepository;
import com.company.meeting_planner.repository.SalleEquipementRepository;
import com.company.meeting_planner.repository.SalleRepository;

import jakarta.transaction.Transactional;

@Service
public class ReservationService {
	
	@Autowired
    private SalleRepository salleRepository;
	
	@Autowired
    private ReservationRepository reservationRepository;
	
	@Autowired
    private SalleEquipementRepository salleEquipementRepository;
	
	@Autowired
    private EquipementRepository equipementRepository;
	
	// operation crud reservation
	
	// reserver salle
	
    // trouver salle

    // si une salle est disponible
   
    // verifier que la salle contient les equipements necessaires pour le type de reunion
    
	// 
}