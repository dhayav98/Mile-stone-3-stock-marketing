package com.demo.stc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.demo.stc.dao.CompanyDao;
import com.demo.stc.model.Company;
import com.demo.stc.service.CompanyService;

@RestController
public class CompanyRestController {
	@Autowired
	CompanyService companyService;
	@Autowired
	CompanyDao companydao;
	@GetMapping("/matching_companies/{matchingName}")
	public List<String>  matchingCompaniesList(@PathVariable("matchingName") String name)
	{
		return companyService.getMatchingCompanies(name);
		
	}
}
