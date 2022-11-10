package com.fish.web.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fish.web.dao.TimeDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TimeDAOTest {
	
	@Autowired
	private TimeDAO timeMapper;
	
	@Test
	public void testGetTime() {
		System.out.println("TEST GOOD!!!" + timeMapper.getTime());
	}
	
	

}
