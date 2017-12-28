package org.studying.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.studying.dto.PollutingFacilityData;
import org.studying.entity.BoundaryTolerance;
import org.studying.entity.Points;
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
    public List<PollutingFacilityData> getDataForDangerousOnly() {
        List<PollutingFacility> pollutingFacilityList = new ArrayList<>();
        pollutingFacilityRepository.findAll().forEach(pollutingFacilityList::add);

        List<PollutingFacilityData> resultList = new ArrayList<>();
        for (PollutingFacility pollutingFacility : pollutingFacilityList) {
            if (pollutingFacility.boundaryTolerance.getMassFlow() <= pollutingFacility.getVolume()) {
                PollutingFacilityData data = new PollutingFacilityData();
                data.setId(pollutingFacility.getId());
                data.setNameOfPlace(pollutingFacility.point.getName());
                data.setNameOfPollutant(pollutingFacility.boundaryTolerance.getName());
                //data.setClassOfPollutant(pollutingFacility.boundaryTolerance.getClassOfPollutant());
                data.setVolume(pollutingFacility.getVolume()*1000000/(365*24));
                data.setBoundaryTolerance(pollutingFacility.boundaryTolerance.getBoundaryTolerance());
                data.setMassFlow(pollutingFacility.boundaryTolerance.getMassFlow());
                data.setPercent(getPercentFromEmission(pollutingFacility));
                data.setTaxRate(pollutingFacility.boundaryTolerance.getTaxRate().getTaxRate());
                data.setAmountOfTax(getTaxes(pollutingFacility));

                resultList.add(data);
            }
        }
        
        return resultList;
    }

    @Override
    public List<PollutingFacility> getDangerousOnly() {
        List<PollutingFacility> pollutingFacilityList = new ArrayList<>();
        pollutingFacilityRepository.findAll().forEach(pollutingFacilityList::add);

        List<PollutingFacility> resultList = new ArrayList<>();
        for (PollutingFacility pollutingFacility : pollutingFacilityList) {
            if (pollutingFacility.boundaryTolerance.getMassFlow() <= pollutingFacility.getVolume()) {
                resultList.add(pollutingFacility);
            }
        }
        return resultList;
    }


    private double getPercentFromEmission(PollutingFacility pollutingFacility) {
        return (int) ((((pollutingFacility.getVolume()/365)/24)*1000000) / pollutingFacility.boundaryTolerance.getMassFlow() * 100);
    }

    private double getTaxes(PollutingFacility pollutingFacility) {

        return pollutingFacility.getVolume() * pollutingFacility.getBoundaryTolerance().getTaxRate().getTaxRate();
    }

    double roundResult (double d, int precise)
    {
        precise = 10^precise;
        d = d * precise;
        int i = (int) Math.round(d);
        return (double) i / precise;
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
    public PollutingFacility save(String nameOfPlace, Double latitude, Double longitude, String nameOfPollutant, Double volume, Double massFlow,
                                  Double boundaryTolerance, String classOfPollutan) {

        PollutingFacility pollutingFacility = new PollutingFacility();

        Points point = new Points();
        pollutingFacility.setPoint(point);


        pollutingFacility.setBoundaryTolerance(new BoundaryTolerance());

        pollutingFacility.point.setName(nameOfPlace);
        pollutingFacility.point.setLatitude(latitude);
        pollutingFacility.point.setLongitude(longitude);
        pollutingFacility.boundaryTolerance.setName(nameOfPollutant);
        pollutingFacility.setVolume(((volume/365)/24)*1000000);
        pollutingFacility.boundaryTolerance.setMassFlow(massFlow);
        pollutingFacility.boundaryTolerance.setBoundaryTolerance(boundaryTolerance);
       // pollutingFacility.boundaryTolerance.getTaxRate().getTaxRate();
      //  pollutingFacility.boundaryTolerance.setClassOfPollutant(classOfPollutan);
        return save(pollutingFacility);
    }

    @Override
    public PollutingFacility save(Long id, String nameOfPlace, Double latitude, Double longitude, String nameOfPollutant, Double volume, Double massFlow,
                                  Double boundaryTolerance, String classOfPollutan) {
        PollutingFacility pollutingFacility = new PollutingFacility();

        pollutingFacility.setPoint(new Points());

        pollutingFacility.setBoundaryTolerance(new BoundaryTolerance());

        pollutingFacility.setId(id);
        pollutingFacility.point.setName(nameOfPlace);
        pollutingFacility.point.setLatitude(latitude);
        pollutingFacility.point.setLongitude(longitude);
        pollutingFacility.boundaryTolerance.setName(nameOfPollutant);
        pollutingFacility.setVolume(((volume/365)/24)*1000000);
        pollutingFacility.boundaryTolerance.setMassFlow(massFlow);
        pollutingFacility.boundaryTolerance.setBoundaryTolerance(boundaryTolerance);
      //  pollutingFacility.boundaryTolerance.setClassOfPollutant(classOfPollutan);

        return save(pollutingFacility);
    }

    @Override
    public void delete(PollutingFacility pollutingFacility) {
        pollutingFacilityRepository.delete(pollutingFacility);
    }

    @Override
    public List<PollutingFacility> findAll() {
        return (List<PollutingFacility>) pollutingFacilityRepository.findAll();
    }
}
