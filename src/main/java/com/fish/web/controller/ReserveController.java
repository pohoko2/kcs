package com.fish.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReserveController 
{
		private static final Logger I = LoggerFactory.getLogger(ReserveController.class);

		@RequestMapping(value="/courses", method=RequestMethod.GET)
		public void Reserve_Move() 
		{
			I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> 예약하기 ");
		}
}