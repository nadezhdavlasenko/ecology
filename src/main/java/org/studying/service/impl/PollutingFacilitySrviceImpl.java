package org.studying.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.studying.dto.PollutingFacilityData;
import org.studying.entity.PollutingFacility;
import org.studying.repository.PollutingFacilityRepository;
import org.studying.service.PollutingFacilityService;

import java.util.ArrayList;
import java.util.List;

@Service("pollutingFacility")
public class PollutingFacilitySrviceImpl implements PollutingFacilityService{
    @Override
    public List<PollutingFacilityData> getOnlyDangerous() {
        return null;
    }
}
