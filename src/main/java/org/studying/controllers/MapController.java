package org.studying.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.studying.dto.PointsDto;
import org.studying.entity.Points;
import org.studying.entity.PollutingFacility;
import org.studying.service.PointsService;
import org.studying.service.PollutingFacilityService;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class MapController {

    @Autowired
    private PointsService pointsService;

    @Autowired
    private PollutingFacilityService pollutingFacilityService;

    @RequestMapping(value = "/map")
    public String map(Model model){
        HashSet<PointsDto> resultsList = new HashSet<>();
        resultsList.addAll(pollutingFacilityService.getDangerousOnly().stream()
                .map(PollutingFacility::getPoint)
                .map(point -> new PointsDto(point.getId(), point.getName(), point.getLatitude(), point.getLongitude(), true))
                .collect(Collectors.toSet()));
        resultsList.addAll(pointsService.getAllPlaces().stream().map(point -> new PointsDto(point.getId(), point.getName(), point.getLatitude(), point.getLongitude(), false)).collect(Collectors.toSet()));


        model.addAttribute("list", new ArrayList<>(resultsList));
        return "map";
    }
}
