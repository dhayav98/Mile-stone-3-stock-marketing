package com.demo.stc.dao;



import org.springframework.data.jpa.repository.JpaRepository;



import com.demo.stc.model.Sector;

public interface SectorDao extends JpaRepository<Sector, Integer>
{
		Sector findByName(String name);


}
