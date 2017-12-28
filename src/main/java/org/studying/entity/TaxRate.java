package org.studying.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "taxRate")

public class TaxRate {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "class")
    private String classOfPollutant;

    @Column(name = "taxRate")
    private Double taxRate;
}
