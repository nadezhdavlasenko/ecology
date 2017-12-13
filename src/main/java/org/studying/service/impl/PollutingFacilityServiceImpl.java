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
public class PollutingFacilityServiceImpl implements PollutingFacilityService{

    @Autowired
    private PollutingFacilityRepository pollutingFacilityRepository;

    @Override
    public List<PollutingFacilityData> getOnlyDangerous() {
        List<PollutingFacility> pollutingFacilityList = new ArrayList<>();
        pollutingFacilityRepository.findAll().forEach(pollutingFacilityList::add);

        List<PollutingFacilityData> resultList = new ArrayList<>();
        for (PollutingFacility pollutingFacility : pollutingFacilityList) {
            if (pollutingFacility.boundaryTolerance.getMassFlow() <= pollutingFacility.getVolume()) {
                PollutingFacilityData data = new PollutingFacilityData();
                data.setNameOfPlace(pollutingFacility.point.getName());
                data.setNameOfPollutant(pollutingFacility.boundaryTolerance.getName());
                data.setClassOfPollutant(pollutingFacility.boundaryTolerance.getClassOfPollutant());
                data.setVolume(pollutingFacility.getVolume());
                data.setBoundaryTolerance(pollutingFacility.boundaryTolerance.getBoundaryTolerance());
                data.setMassFlow(pollutingFacility.boundaryTolerance.getMassFlow());
                data.setPercent(getPercentFromEmission(pollutingFacility));

                resultList.add(data);
            }
        }
        
        return resultList;
    }

    private double getPercentFromEmission(PollutingFacility pollutingFacility) {
        return (int) (pollutingFacility.getVolume() / pollutingFacility.boundaryTolerance.getMassFlow() * 100);
    }

    @Override
    public PollutingFacility getById(Long id) {
        return pollutingFacilityRepository.findOne(id);
    }

    @Override
    public PollutingFacility save(PollutingFacility pollutingFacility) {
        return pollutingFacilityRepository.save(pollutingFacility);
    }

//    private String nameOfPlace;
//    private String nameOfPollutant;
//    private Double volume;
//    private Double massFlow;
//    private Double boundaryTolerance;
//    private Double percent;
//    private String classOfPollutant;
    @Override
    public PollutingFacility save(String nameOfPlace, String nameOfPollutant, Double volume, Double massFlow,
                                  Double boundaryTolerance, String classOfPollutan) {
        PollutingFacility pollutingFacility = new PollutingFacility();
        pollutingFacility.point.setName(nameOfPlace);
        pollutingFacility.boundaryTolerance.setName(nameOfPollutant);
        pollutingFacility.setVolume(volume);
        pollutingFacility.boundaryTolerance.setMassFlow(massFlow);
        pollutingFacility.boundaryTolerance.setBoundaryTolerance(boundaryTolerance);
        pollutingFacility.boundaryTolerance.setClassOfPollutant(classOfPollutan);
        return save(pollutingFacility);
    }

    @Override
    public PollutingFacility save(Long id, String nameOfPlace, String nameOfPollutant, Double volume, Double massFlow,
                                  Double boundaryTolerance, String classOfPollutan) {
        PollutingFacility pollutingFacility = new PollutingFacility();
        pollutingFacility.setId(id);
        pollutingFacility.point.setName(nameOfPlace);
        pollutingFacility.boundaryTolerance.setName(nameOfPollutant);
        pollutingFacility.setVolume(volume);
        pollutingFacility.boundaryTolerance.setMassFlow(massFlow);
        pollutingFacility.boundaryTolerance.setBoundaryTolerance(boundaryTolerance);
        pollutingFacility.boundaryTolerance.setClassOfPollutant(classOfPollutan);

        return save(pollutingFacility);
    }

    @Override
    public void delete(PollutingFacility pollutingFacility) {
        pollutingFacilityRepository.delete(pollutingFacility);
    }
}
