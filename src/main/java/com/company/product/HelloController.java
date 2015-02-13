package com.company.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	@Autowired
	private ContactDAO contactDAO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(value = "/next", method = RequestMethod.GET)
	public String page1(Model model) {
		model.addAttribute("contact", new Contact());
		model.addAttribute("contacts", contactDAO.getAll());
		return "page1";
	}

	@RequestMapping(value = "/user_create", method = RequestMethod.POST)
	public String createUser(Contact contact) {
		System.out.println("Contact----" + contact);
		contactDAO.saveContact(contact);
		return "redirect:/next";
	}
}
