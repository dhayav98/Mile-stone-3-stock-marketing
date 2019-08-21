package com.demo.stc.controller;


import java.sql.SQLException;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.demo.stc.model.Company;

public interface CompanyController {

  	    public Company insertCompanyDetails(Company company) throws SQLException,ClassNotFoundException ;
	    public Company updateCompany(Company company);
		public ModelAndView getCompanyList() throws Exception;

	
}