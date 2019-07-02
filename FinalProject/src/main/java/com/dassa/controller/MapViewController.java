package com.dassa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MapViewController {
	@RequestMapping("/mapView")
	public String MapView() {
		return "guest/mapView";
	}
}
