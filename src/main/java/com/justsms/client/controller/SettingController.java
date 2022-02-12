package com.justsms.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.justsms.client.model.BlackListNumber;
import com.justsms.client.model.ManageSignature;
import com.justsms.client.service.ClientService;

@Controller
public class SettingController {

	@Autowired
	private ClientService clientService;
	
	
	@GetMapping("/manageSignature")
	public String showManageSignaturePage(Model model)
	{
		model.addAttribute("sign", new ManageSignature());
		List<ManageSignature> mgsgList=clientService.getAllSignature();
		model.addAttribute("mgsgList",mgsgList);
		return "manageSignature";
	}
	
	@PostMapping("/manageSignature")
	public String saveManageSignaturePage(@ModelAttribute("sign") ManageSignature signature, Model model,RedirectAttributes redirectAttributes)
	{
		ManageSignature Savedisgnature=clientService.saveSignature(signature);
		if(Savedisgnature!=null)
		{
			
			redirectAttributes.addFlashAttribute("message","Signature Created SuccessFully.");
			
		}
		return "redirect:/manageSignature";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteSignature(@PathVariable("id") Integer id,RedirectAttributes redirectAttributes)
	{
		clientService.deleteById(id);
		redirectAttributes.addFlashAttribute("message","Signature deleted SuccessFully.");
		return "redirect:/manageSignature";
	}
	
	@GetMapping("/blackList")
	public String showBlackListPage(Model model)
	{
		model.addAttribute("blacklist", new BlackListNumber());
		List<BlackListNumber> AllBlackList=clientService.getAllBlackList();
		model.addAttribute("allBlackList",AllBlackList);
		return "blackList";
	}
	
	@PostMapping("/blackList")
	public String saveBlackListNumber(@ModelAttribute("blacklist") BlackListNumber blackListNumber,RedirectAttributes redirectAttributes)
	{
		BlackListNumber savedBlackList=  clientService.saveBlackListNumber(blackListNumber);
		if(savedBlackList!=null)
		{
			redirectAttributes.addFlashAttribute("message","Number BlackListed SuccessFully.");
		}
		return "redirect:/blackList";
	}
	
	
	@GetMapping("/remove/{id}")
	public String deleteBlackList(@PathVariable("id") Integer id,RedirectAttributes redirectAttributes)
	{
		clientService.deleteBlackListById(id);
		redirectAttributes.addFlashAttribute("message","Number deleted SuccessFully.");
		return "redirect:/blackList";
	}
}
