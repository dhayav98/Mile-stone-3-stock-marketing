package com.demo.stc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.demo.stc.dao.IpoDetailDao;
import com.demo.stc.model.IpoDetail;
//import com.demo.stc.service.IpoDetailService;


@RestController
public class IpoDetailRestController {

@Autowired
IpoDetailDao ipoDetailsDao;
	
	@GetMapping("/ipo_details_list/{name}")
	public List<IpoDetail> ipo_details_list(@PathVariable("name") String companyName)
	{
		List<IpoDetail> ipodetailslist=ipoDetailsDao.findByCompanyName(companyName);
		return ipodetailslist;

	}
}
