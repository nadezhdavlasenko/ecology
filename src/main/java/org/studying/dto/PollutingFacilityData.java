package org.studying.dto;

import lombok.Data;

@Data

public class PollutingFacilityData {



        private Long id;
        private String nameOfPlace;
        private String nameOfPollutant;
        private Double volume;
        private Double massFlow;
        private Double boundaryTolerance;
        private Double percent;
       // private String classOfPollutant;
        private Double taxRate;
        private Double AmountOfTax;


}
