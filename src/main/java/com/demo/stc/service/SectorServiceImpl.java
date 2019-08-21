package com.demo.stc.service;

import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.stc.dao.SectorDao;
import com.demo.stc.model.Sector;

@Service
public class SectorServiceImpl implements SectorService {
	@Autowired
	SectorDao sectorDao;
	public Sector getSectorName(String name)
	{
		return  sectorDao.findByName(name);
	}
}
