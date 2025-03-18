package com.company.meeting_planner.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.meeting_planner.model.Reservation;
import com.company.meeting_planner.model.Reunion;
import com.company.meeting_planner.model.Salle;
import com.company.meeting_planner.repository.ReservationRepository;
import com.company.meeting_planner.service.ReservationService;

@RestController
@RequestMapping("/api/reservations")
public class ReservationController {

	@Autowired
    private ReservationService reservationService;
	
	// reserver la salle /reserver
}