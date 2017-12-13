package org.studying.dto;

import lombok.Data;

@Data

public class PollutingFacilityData {



        private String nameOfPlace;
        private String nameOfPollutant;
        private Double volume;
        private Double massFlow;
        private Double boundaryTolerance;
        private Double percent;
        private String classOfPollutant;

}
