package com.demo.stc.controller;

import java.sql.SQLException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.stc.model.Company;
import com.demo.stc.model.User;
import com.demo.stc.service.CompanyService;
import com.demo.stc.service.CompanyServiceImpl;


@Controller
public class CompanyControllerImpl implements CompanyController {
	@Autowired
	private CompanyService companyService ;

	public Company insertCompanyDetails(Company company) throws SQLException, ClassNotFoundException {
		companyService.insertCompany(company);
		return company;
	}
	
	
	@RequestMapping("/adminlandingpage")
	public String adminpage()
	{
		return "admin_landing_page";
	}
	

	
	@RequestMapping("/company_insert_page")
	public String company_insert_page(Model model)
	{
		Company company=new Company();
		model.addAttribute("company", company);
		return "create_new_company";
	}
	
	
	
	public Company updateCompany(Company company) {
	
		return null;
	}

	
	
	@RequestMapping("/company-list")
		public ModelAndView getCompanyList() throws Exception {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("list_company_details");
			mv.addObject("companyList",companyService.getCompanyList());
			return mv;
	}
	
	
	@RequestMapping(value="/insert_company_details", method=RequestMethod.POST)
    public String insert(@Valid @ModelAttribute("company") Company company,BindingResult result,Model model) throws SQLException{
        if(result.hasErrors())
        {
        	return "create_new_company";
        }
        else
        {
		
		try {
	
			insertCompanyDetails(company);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
              return "redirect:/company-list";
       }

	}
	
	
	
	public static void main(String [] args) {
		CompanyController controller=new CompanyControllerImpl();
		try {
			System.out.println(controller.getCompanyList());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

	

