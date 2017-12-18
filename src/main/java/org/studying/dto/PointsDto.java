package org.studying.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Objects;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PointsDto {

    private Long id;

    private String name;

    private Double latitude;

    private Double longitude;

    private boolean dangerous;

   // private List<Vybros> vybrosList;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        PointsDto pointsDto = (PointsDto) o;
        return Objects.equals(id, pointsDto.id) &&
                Objects.equals(name, pointsDto.name) &&
                Objects.equals(latitude, pointsDto.latitude) &&
                Objects.equals(longitude, pointsDto.longitude);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id, name, latitude, longitude);
    }
}
