package com.demo.stc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.demo.stc.dao.SectorDao;
import com.demo.stc.model.Company;
import com.demo.stc.model.Sector;
import com.demo.stc.service.CompanyService;
import com.demo.stc.service.SectorService;

@RestController
public class SectorRestController {

	@Autowired
	CompanyService companyService;
	@Autowired
	SectorDao sectorDao;
	@Autowired
	SectorService sectorService;
	
	@GetMapping("/companieslist/{name}")
	public List<Company> getCompaniesListByStockName(@PathVariable("name") String stockName)
	{
		Sector sectorid=sectorService.getSectorName(stockName);
		System.out.println("sector id : "+sectorid.getId());
		return companyService.getCompaniesByStockId(sectorid.getId());
	}
	
	
	
	
}
