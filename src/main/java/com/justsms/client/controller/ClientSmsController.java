package com.justsms.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.justsms.client.model.ClientRegisterForm;
import com.justsms.client.service.ClientService;

@Controller
public class ClientSmsController {
@Autowired
private ClientService clientService;
	
	@GetMapping("/Register")
	public String showRegisterPage(Model model)
	{
		model.addAttribute("clientForm", new ClientRegisterForm());
		return "registeration";
		
	}
	
	@GetMapping("/Login")
	public String showLoginPage(Model model)
	{
		model.addAttribute("client", new ClientRegisterForm());
		return "client";
		
	}
	
	@PostMapping("/Register")
	public String saveClientFormData(@ModelAttribute("clientForm") ClientRegisterForm registerForm,Model model)
	{
		
		ClientRegisterForm savedClient=	clientService.saveClient(registerForm);
		if(savedClient!=null)
		{
			return "redirect:/Dashboard";
		}
		else
		{
			model.addAttribute("message","Error Occurred While Saving Client Data.");
			return "redirect:/Register";
		}
		
	}
	
	@GetMapping("/Dashboard")
	public String showDashboardPage()
	{
		return "dashboard";
	}
}
