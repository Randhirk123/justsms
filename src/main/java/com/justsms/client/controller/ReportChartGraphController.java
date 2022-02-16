package com.justsms.client.controller;

import java.util.Map;
import java.util.TreeMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReportChartGraphController {

	@GetMapping("/report")
	public String showReportChartPage(Model model)
	{
		 Map<String, Integer> graphData = new TreeMap<>();
		 graphData.put("2016", 147);
	        graphData.put("2017", 1256);
	        graphData.put("2018", 3856);
	        graphData.put("2019", 19807);
	        model.addAttribute("chartData", graphData);
		return null;
		
	}
	
}
