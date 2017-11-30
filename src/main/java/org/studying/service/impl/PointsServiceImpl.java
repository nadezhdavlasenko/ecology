package org.studying.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.studying.entity.Points;
import org.studying.repository.PointsRepository;
import org.studying.service.PointsService;

import java.util.ArrayList;
import java.util.List;

@Service("placesService")
public class PointsServiceImpl implements PointsService {
    @Autowired
    private PointsRepository pointsRepository;

    @Override
    public List<Points> getAllPlaces() {
        List<Points> pointsList = new ArrayList<>();
        pointsRepository.findAll().forEach(pointsList::add);
        return pointsList;
    }

    @Override
    public Points getById(Long id) {
        return pointsRepository.findOne(id);
    }

    @Override
    public Points save(Points place) {
        return pointsRepository.save(place);
    }

    @Override
    public Points save(String name, Double latitude, Double longitude) {
        Points place = new Points();
        place.setName(name);
        place.setLatitude(latitude);
        place.setLongitude(longitude);
        return save(place);
    }

    public Points save(Long id, String name, Double latitude, Double longitude) {
        Points place = new Points();
        place.setId(id);
        place.setName(name);
        place.setLatitude(latitude);
        place.setLongitude(longitude);

        return save(place);
    }

    @Override
    public void delete(Points place) {
        pointsRepository.delete(place);
    }
}
