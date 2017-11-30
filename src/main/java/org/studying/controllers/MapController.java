package org.studying.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.studying.entity.Points;
import org.studying.service.PointsService;

import java.util.List;

@Controller
public class MapController {

    @Autowired
    private PointsService pointsService;

    @RequestMapping(value = "/map")
    public String map(Model model){
        List<Points> places = pointsService.getAllPlaces();
        model.addAttribute("list", places);
        return "map";
    }
}
