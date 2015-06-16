package com.tommy.service.impl;

import java.util.List;

import com.tommy.dao.PkListDAO;
import com.tommy.model.PkList;
import com.tommy.service.PkListService;

public class PkListServiceImpl implements PkListService {
    
	
	private PkListDAO pkListDao;
	
	
	
	public PkListDAO getPkListDao() {
		return pkListDao;
	}

	public void setPkListDao(PkListDAO pkListDao) {
		this.pkListDao = pkListDao;
	}

	public PkListServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	
	public List<PkList> findAll() {
		// TODO Auto-generated method stub
		return this.pkListDao.findAllPkList();
	}

	
	public void save(PkList pkList) {
		this.pkListDao.savePlace(pkList);
		
	}


	public void delete(Integer pkNo) {
		this.pkListDao.removePkList(pkNo);
		
	}

	
	public List<PkList> findByPkNo(Integer pkNo) {
		// TODO Auto-generated method stub
		return this.pkListDao.findPkListByPkNo(pkNo);
	}

	
	public void update(PkList pkList) {
		this.pkListDao.updatePkList(pkList);
		
	}

	

}
