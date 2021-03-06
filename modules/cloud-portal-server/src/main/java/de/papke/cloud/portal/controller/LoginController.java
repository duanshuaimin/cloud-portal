package de.papke.cloud.portal.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController extends ApplicationController {

	private static final String PREFIX = "/login";
	
	@GetMapping(path = PREFIX)
	public String login(Map<String, Object> model) {

		// fill model
		fillModel(model);		

		// return view name
		return "login";
	}
}
