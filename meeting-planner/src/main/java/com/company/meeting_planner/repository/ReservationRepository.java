package com.company.meeting_planner.repository;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.meeting_planner.model.Reservation;
import com.company.meeting_planner.model.Salle;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}