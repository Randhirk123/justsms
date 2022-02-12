package com.justsms.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.justsms.client.model.ClientRegisterForm;
import com.justsms.client.model.ResellerDetails;
import com.justsms.client.service.ClientService;
import com.justsms.client.utility.*;

@Controller
public class ChangePasswordController {

	@Autowired
	private ClientService clientService;
	
	@GetMapping("/changepassword")
	public String showClientPasswordPage(Model model)
	{
		model.addAttribute("changepwd",new ClientRegisterForm());
		return "changePassword";
	}
	
	@PostMapping("/changepassword")
	public String saveChangePwd(@AuthenticationPrincipal ResellerDetails userDetails,@ModelAttribute("changepwd") ClientRegisterForm registerForm,RedirectAttributes redirectAttributes)
	{
		
		if(userDetails!=null)
		{
			ClientRegisterForm clientDetail=clientService.getClientByUsername(userDetails.getUsername());
			if(clientDetail!=null)
			{
				if(BcryptHashedPassword.matches(registerForm.getPassword().trim(),clientDetail.getPassword()))
				{
					ClientRegisterForm savedPass=clientService.changeClientPassword(clientDetail.getUsername(),registerForm.getNewPassword().trim());
					if(savedPass!=null)
					{
						redirectAttributes.addFlashAttribute("message","Password Updated SuccessFully.");
					}
					else
					{
						redirectAttributes.addFlashAttribute("message","Password Not Updated.");
						
					}
				}
				else
				{
					redirectAttributes.addFlashAttribute("message","Password and New Password Are Not Same.");
				}
			}
		}else
		{
			redirectAttributes.addFlashAttribute("message","Error While Updating Password.");
		}
		
		return "redirect:/changepassword";
	}
		
	}
	
	

