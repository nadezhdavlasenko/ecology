package org.studying.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "boundaryTolerance")
public class BoundaryTolerance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

//    @Column(name = "")
//    @OneToOne
//    @JoinColumn
//    private Points point;

    @Column(name = "name")
    private String name;


    @Column(name = "massFlow")
    private Double massFlow;

    @Column(name = "boundaryTolerance")
    private Double boundaryTolerance;


    @Column(name = "class")
    private String classOfPollutant;

//    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "pollutants")
//    public List<BoundaryTolerance> boundaryToleranceList;

}
