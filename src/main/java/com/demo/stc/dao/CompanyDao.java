package com.demo.stc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.stc.model.Company;

public interface CompanyDao extends JpaRepository<Company, Integer>{
	List<Company> findBySectorId( int sectorId);
	
	@Query("Select c.companyName From Company c where c.companyName like %:name%")
	List<String> companyNameMatchingList(String name);
}
