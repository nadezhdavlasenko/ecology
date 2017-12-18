package org.studying.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;


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
    private Double volume;

    @Column(name = "funds")
    private Double funds;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        PollutingFacility that = (PollutingFacility) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(point, that.point) &&
                Objects.equals(boundaryTolerance, that.boundaryTolerance) &&
                Objects.equals(volume, that.volume) &&
                Objects.equals(funds, that.funds);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id, point, boundaryTolerance, volume, funds);
    }
}
