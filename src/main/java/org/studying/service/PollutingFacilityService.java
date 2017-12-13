package org.studying.service;

import org.studying.dto.PollutingFacilityData;

import java.util.List;



public interface PollutingFacilityService {

    List<PollutingFacilityData> getOnlyDangerous();

}