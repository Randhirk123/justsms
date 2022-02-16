package com.justsms.client.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.justsms.client.model.Message;
import com.justsms.client.smpp.MultipleSubmitSmppMessage;
import com.justsms.client.utility.MessageUtil;

@Controller
public class MessageController {

	
	@GetMapping("/sendsms")
	public String showSendMsgPage(Model model)
	{
		model.addAttribute("message",new Message());
		return "sendMsg";
	}
	
	@PostMapping("/sendsms")
	public String sendMsgAndSave(@ModelAttribute("message") Message message)
	{
		MultipleSubmitSmppMessage multipleSubmitSmppMessage=new MultipleSubmitSmppMessage();
		
		multipleSubmitSmppMessage.broadcastMessage(message.getSmsmessage(),Arrays.asList(message.getMobileNumber()));
		return "redirect:/sendsms";
	}
}
