package org.studying.entity;

import lombok.Data;

import javax.persistence.*;


@Data
@Entity
@Table(name = "pollutingFacility")

public class PollutingFacility {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    public Points point;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    public BoundaryTolerance boundaryTolerance;

    @Column(name = "volume")
    private String volume;

    @Column(name = "funds")
    private Double funds;
}
