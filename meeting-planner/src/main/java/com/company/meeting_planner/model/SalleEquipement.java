package com.company.meeting_planner.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "salle_equipements")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SalleEquipement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idSalleEquipement;

    @ManyToOne
    @JoinColumn(name = "id_salle", nullable = false)
    private Salle salle;

    @ManyToOne
    @JoinColumn(name = "id_equipement", nullable = false)
    private Equipement equipement;
}