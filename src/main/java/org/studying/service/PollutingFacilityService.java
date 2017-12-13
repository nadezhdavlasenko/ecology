package org.studying.service;

import org.studying.dto.PollutingFacilityData;
import org.studying.entity.PollutingFacility;

import java.util.List;



public interface PollutingFacilityService {

    List<PollutingFacilityData> getOnlyDangerous();

    PollutingFacility getById(Long id);

    PollutingFacility save(PollutingFacility pollutingFacility);

    PollutingFacility save(String nameOfPlace, String nameOfPollutant, Double volume, Double massFlow,
                           Double boundaryTolerance, String classOfPollutan);

    PollutingFacility save(Long id, String nameOfPlace, String nameOfPollutant, Double volume, Double massFlow,
                           Double boundaryTolerance, String classOfPollutan);

    void delete(PollutingFacility pollutingFacility);
}