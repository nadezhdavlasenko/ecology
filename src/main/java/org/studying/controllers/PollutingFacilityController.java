package org.studying.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.studying.service.PollutingFacilityService;

@Controller

public class PollutingFacilityController {

    @Autowired
    private PollutingFacilityService pollutingFacilityService;

    @RequestMapping(value = "/excess")
    public String homePage(Model model) {
        model.addAttribute("list", pollutingFacilityService.getOnlyDangerous());
        return "excess";
    }

    @RequestMapping(value = "/excess/deleteMarker", method = RequestMethod.POST)
    public String deleteMarker(@RequestParam("delete") Long id, Model model){
        pollutingFacilityService.delete(pollutingFacilityService.getById(id));
        model.addAttribute("list", pollutingFacilityService.getOnlyDangerous());
        return "table";
    }

//    private String nameOfPlace;
//    private String nameOfPollutant;
//    private Double volume;
//    private Double massFlow;
//    private Double boundaryTolerance;
//    private Double percent;
//    private String classOfPollutant;

    @RequestMapping(value = "/excess/createMarker", method = RequestMethod.POST)
    public String createMarker(
            @RequestParam("nameOfPlace") String nameOfPlace,
            @RequestParam("nameOfPollutant") String nameOfPollutant,
            @RequestParam("volume") Double volume,
            @RequestParam("massFlow") Double massFlow,
            @RequestParam("boundaryTolerance") Double boundaryTolerance,
            @RequestParam("classOfPollutant") String classOfPollutant,

            Model model){
        pollutingFacilityService.save(nameOfPlace, nameOfPollutant, volume, massFlow,
                                        boundaryTolerance, classOfPollutant);
        model.addAttribute("list", pollutingFacilityService.getOnlyDangerous());
        return "table";
    }

    @RequestMapping(value = "/excess/updateMarker", method = RequestMethod.POST)
    public String createMarker(
            @RequestParam("id") Long id,
            @RequestParam("nameOfPlace") String nameOfPlace,
            @RequestParam("nameOfPollutant") String nameOfPollutant,
            @RequestParam("volume") Double volume,
            @RequestParam("massFlow") Double massFlow,
            @RequestParam("boundaryTolerance") Double boundaryTolerance,
            @RequestParam("classOfPollutant") String classOfPollutant,
            Model model){
        pollutingFacilityService.save(id, nameOfPlace, nameOfPollutant, volume, massFlow,
                boundaryTolerance, classOfPollutant);
        model.addAttribute("list", pollutingFacilityService.getOnlyDangerous());
        return "table";
    }
}
